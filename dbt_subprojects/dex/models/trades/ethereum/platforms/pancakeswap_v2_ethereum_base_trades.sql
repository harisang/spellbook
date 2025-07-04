{{
    config(
        schema = 'pancakeswap_ethereum',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

WITH 

dexs_macro AS (
    -- PancakeSwap v2
    {{
        uniswap_compatible_v2_trades(
            blockchain = 'ethereum',
            project = 'pancakeswap',
            version = '2',
            Pair_evt_Swap = source('pancakeswap_v2_ethereum', 'PancakePair_evt_Swap'),
            Factory_evt_PairCreated = source('pancakeswap_v2_ethereum', 'PancakeFactory_evt_PairCreated')
        )
    }}
),

transfer as (
  select * from {{ source('tokens', 'transfers') }}
  where blockchain = 'ethereum'
  and block_date >= date '2024-09-20' 
  and tx_hash in (select evt_tx_hash from {{ source('pancakeswap_ethereum', 'ExclusiveDutchOrderReactor_evt_Fill') }})
  {% if is_incremental() %}
  and {{ incremental_predicate('block_time') }}
  {% endif %}
),

dexs_pcsx AS (
    -- PancakeSwapX
    SELECT
        'pcsx' AS version,
        a.evt_block_number AS block_number,
        a.evt_block_time AS block_time,
        a.swapper AS taker,
        a.filler AS maker,
        receive.amount_raw AS token_bought_amount_raw,
        send.amount_raw AS token_sold_amount_raw,
        receive.contract_address AS token_bought_address,
        send.contract_address AS token_sold_address,     
        a.contract_address AS project_contract_address,
        a.evt_tx_hash AS tx_hash,
        a.evt_index
    
    FROM {{ source('pancakeswap_ethereum', 'ExclusiveDutchOrderReactor_evt_Fill') }} a 

    LEFT JOIN transfer AS send 
    ON a.evt_tx_hash = send.tx_hash AND a.swapper = send."from"

    LEFT JOIN transfer AS receive 
    on a.evt_tx_hash = receive.tx_hash AND a.swapper = receive."to"
    WHERE 1 != 1 -- TODO: remove this and fix duplicates
    {% if is_incremental() %}
    AND {{ incremental_predicate('a.evt_block_time') }}
    {% endif %}
),

dexs_mm AS (
    -- PancakeSwap v2 MMPool
    SELECT
        'mmpool' AS version,
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.user AS taker,
        t.mm AS maker,
        quoteTokenAmount AS token_bought_amount_raw,
        baseTokenAmount AS token_sold_amount_raw,
        CASE WHEN quotetoken  = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee 
             THEN 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 ELSE quotetoken END AS token_bought_address,
        CASE WHEN basetoken  = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee 
             THEN 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 ELSE basetoken END AS token_sold_address,     
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('pancakeswap_v2_ethereum', 'PancakeSwapMMPool_evt_Swap') }} t
    {% if is_incremental() %}
    WHERE {{ incremental_predicate('t.evt_block_time') }}
    {% endif %}
),

dexs_ss AS (
    -- PancakeSwap v2 stableswap
    SELECT
        'stableswap' AS version,
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.buyer AS taker, 
        CAST(NULL AS VARBINARY) AS maker,
        tokens_bought AS token_bought_amount_raw,
        tokens_sold AS token_sold_amount_raw,
        CASE WHEN bought_id = UINT256 '0' THEN f.tokenA ELSE f.tokenB END AS token_bought_address,
        CASE WHEN bought_id = UINT256 '0' THEN f.tokenB ELSE f.tokenA END AS token_sold_address,
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('pancakeswap_v2_ethereum', 'PancakeStableSwapTwoPool_evt_TokenExchange') }} t
    INNER JOIN {{ source('pancakeswap_v2_ethereum', 'PancakeStableSwapFactory_evt_NewStableSwapPair') }} f
    ON t.contract_address = f.swapContract
    {% if is_incremental() %}
    WHERE {{ incremental_predicate('t.evt_block_time') }}
    {% endif %}
)



SELECT
    dexs_macro.blockchain,
    dexs_macro.project,
    dexs_macro.version,
    dexs_macro.block_month,
    dexs_macro.block_date,
    dexs_macro.block_time,
    dexs_macro.block_number,
    dexs_macro.token_bought_amount_raw,
    dexs_macro.token_sold_amount_raw,
    dexs_macro.token_bought_address,
    dexs_macro.token_sold_address,
    dexs_macro.taker,
    dexs_macro.maker,
    dexs_macro.project_contract_address,
    dexs_macro.tx_hash,
    dexs_macro.evt_index
FROM dexs_macro
UNION ALL
SELECT
    'ethereum' AS blockchain,
    'pancakeswap' AS project,
    dexs_mm.version,
    CAST(date_trunc('month', dexs_mm.block_time) AS date) AS block_month,
    CAST(date_trunc('day', dexs_mm.block_time) AS date) AS block_date,
    dexs_mm.block_time,
    dexs_mm.block_number,
    dexs_mm.token_bought_amount_raw,
    dexs_mm.token_sold_amount_raw,
    dexs_mm.token_bought_address,
    dexs_mm.token_sold_address,
    dexs_mm.taker,
    dexs_mm.maker,
    dexs_mm.project_contract_address,
    dexs_mm.tx_hash,
    dexs_mm.evt_index
FROM dexs_mm
UNION ALL
SELECT
    'ethereum' AS blockchain,
    'pancakeswap' AS project,
    dexs_ss.version,
    CAST(date_trunc('month', dexs_ss.block_time) AS date) AS block_month,
    CAST(date_trunc('day', dexs_ss.block_time) AS date) AS block_date,
    dexs_ss.block_time,
    dexs_ss.block_number,
    dexs_ss.token_bought_amount_raw,
    dexs_ss.token_sold_amount_raw,
    dexs_ss.token_bought_address,
    dexs_ss.token_sold_address,
    dexs_ss.taker,
    dexs_ss.maker,
    dexs_ss.project_contract_address,
    dexs_ss.tx_hash,
    dexs_ss.evt_index
FROM dexs_ss
UNION ALL
SELECT
    'ethereum' AS blockchain,
    'pancakeswap' AS project,
    dexs_pcsx.version,
    CAST(date_trunc('month', dexs_pcsx.block_time) AS date) AS block_month,
    CAST(date_trunc('day', dexs_pcsx.block_time) AS date) AS block_date,
    dexs_pcsx.block_time,
    dexs_pcsx.block_number,
    dexs_pcsx.token_bought_amount_raw,
    dexs_pcsx.token_sold_amount_raw,
    dexs_pcsx.token_bought_address,
    dexs_pcsx.token_sold_address,
    dexs_pcsx.taker,
    dexs_pcsx.maker,
    dexs_pcsx.project_contract_address,
    dexs_pcsx.tx_hash,
    dexs_pcsx.evt_index
FROM dexs_pcsx
WHERE token_sold_amount_raw > 0
AND token_bought_amount_raw > 0