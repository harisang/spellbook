{{
  config(
    schema = 'gmx_v2_arbitrum',
    alias = 'deposit_executed',
    materialized = 'incremental',
    unique_key = ['tx_hash', 'index'],
    incremental_strategy = 'merge'
    )
}}

{%- set event_name = 'DepositExecuted' -%}
{%- set blockchain_name = 'arbitrum' -%}


WITH evt_data_1 AS (
    SELECT 
        -- Main Variables
        '{{ blockchain_name }}' AS blockchain,
        evt_block_time AS block_time,
        evt_block_number AS block_number, 
        evt_tx_hash AS tx_hash,
        evt_index AS index,
        contract_address,
        eventName AS event_name,
        eventData AS data,
        msgSender AS msg_sender
    FROM {{ source('gmx_v2_arbitrum','EventEmitter_evt_EventLog1')}}
    WHERE eventName = '{{ event_name }}'
    {% if is_incremental() %}
        AND {{ incremental_predicate('evt_block_time') }}
    {% endif %}
)

, evt_data_2 AS (
    SELECT 
        -- Main Variables
        '{{ blockchain_name }}' AS blockchain,
        evt_block_time AS block_time,
        evt_block_number AS block_number, 
        evt_tx_hash AS tx_hash,
        evt_index AS index,
        contract_address,
        eventName AS event_name,
        eventData AS data,
        msgSender AS msg_sender
    FROM {{ source('gmx_v2_arbitrum','EventEmitter_evt_EventLog2')}}
    WHERE eventName = '{{ event_name }}'
    {% if is_incremental() %}
        AND {{ incremental_predicate('evt_block_time') }}
    {% endif %}
)

, evt_data_3 AS (
    SELECT 
        -- Main Variables
        '{{ blockchain_name }}' AS blockchain,
        evt_block_time AS block_time,
        evt_block_number AS block_number, 
        evt_tx_hash AS tx_hash,
        evt_index AS index,
        contract_address,
        eventName AS event_name,
        eventData AS data,
        msgSender AS msg_sender
    FROM {{ source('gmx_v2_arbitrum','EventEmitter_evt_EventLog')}}
    WHERE eventName = '{{ event_name }}'
    {% if is_incremental() %}
        AND {{ incremental_predicate('evt_block_time') }}
    {% endif %}
)

-- unite 3 tables
, evt_data AS (
    SELECT * 
    FROM evt_data_1
    UNION ALL
    SELECT *
    FROM evt_data_2
    UNION ALL
    SELECT *
    FROM evt_data_3
)

, parsed_data AS (
    SELECT
        tx_hash,
        index,
        json_query(data, 'lax $.addressItems' OMIT QUOTES) AS address_items,
        json_query(data, 'lax $.uintItems' OMIT QUOTES) AS uint_items,
        json_query(data, 'lax $.bytes32Items' OMIT QUOTES) AS bytes32_items
    FROM
        evt_data
)

, address_items_parsed AS (
    SELECT 
        tx_hash,
        index,
        json_extract_scalar(CAST(item AS VARCHAR), '$.key') AS key_name,
        json_extract_scalar(CAST(item AS VARCHAR), '$.value') AS value
    FROM 
        parsed_data,
        UNNEST(
            CAST(json_extract(address_items, '$.items') AS ARRAY(JSON))
        ) AS t(item)
)

, uint_items_parsed AS (
    SELECT 
        tx_hash,
        index,
        json_extract_scalar(CAST(item AS VARCHAR), '$.key') AS key_name,
        json_extract_scalar(CAST(item AS VARCHAR), '$.value') AS value
    FROM 
        parsed_data,
        UNNEST(
            CAST(json_extract(uint_items, '$.items') AS ARRAY(JSON))
        ) AS t(item)
)

, bytes32_items_parsed AS (
    SELECT 
        tx_hash,
        index,
        json_extract_scalar(CAST(item AS VARCHAR), '$.key') AS key_name,
        json_extract_scalar(CAST(item AS VARCHAR), '$.value') AS value
    FROM 
        parsed_data,
        UNNEST(
            CAST(json_extract(bytes32_items, '$.items') AS ARRAY(JSON))
        ) AS t(item)
)

, combined AS (
    SELECT *
    FROM address_items_parsed
    UNION ALL
    SELECT *
    FROM uint_items_parsed
    UNION ALL
    SELECT *
    FROM bytes32_items_parsed
)

, evt_data_parsed AS (
    SELECT
        tx_hash,
        index,

        MAX(CASE WHEN key_name = 'account' THEN value END) AS account,
        MAX(CASE WHEN key_name = 'longTokenAmount' THEN value END) AS long_token_amount,
        MAX(CASE WHEN key_name = 'shortTokenAmount' THEN value END) AS short_token_amount,
        MAX(CASE WHEN key_name = 'receivedMarketTokens' THEN value END) AS received_market_tokens,
        MAX(CASE WHEN key_name = 'swapPricingType' THEN value END) AS swap_pricing_type,
        MAX(CASE WHEN key_name = 'key' THEN value END) AS "key"
        
    FROM
        combined
    GROUP BY tx_hash, index
)

, event_data AS (
    SELECT 
        blockchain,
        block_time,
        block_number,
        ED.tx_hash,
        ED.index,
        contract_address,
        event_name,
        msg_sender,

        from_hex(account) AS account,
        TRY_CAST(long_token_amount AS DOUBLE) AS long_token_amount,
        TRY_CAST(short_token_amount AS DOUBLE) AS short_token_amount,
        TRY_CAST(received_market_tokens AS DOUBLE) AS received_market_tokens,
        TRY_CAST(swap_pricing_type AS INTEGER) AS swap_pricing_type,
        from_hex("key") AS "key"

    FROM evt_data AS ED
    LEFT JOIN evt_data_parsed AS EDP
        ON ED.tx_hash = EDP.tx_hash
            AND ED.index = EDP.index
)

, full_data AS (
    SELECT 
        ED.blockchain,
        ED.block_time,
        DATE(ED.block_time) AS block_date,
        ED.block_number,
        ED.tx_hash,
        ED.index,
        ED.contract_address,
        ED.event_name,
        ED.msg_sender,

        ED.account,
        ED.long_token_amount / POWER(10, MD.long_token_decimals) AS long_token_amount,
        ED.short_token_amount / POWER(10, MD.short_token_decimals) AS short_token_amount,
        ED.received_market_tokens / POWER(10, 18) AS received_market_tokens,
        ED.swap_pricing_type,
        ED."key"
        
    FROM event_data AS ED
    LEFT JOIN {{ ref('gmx_v2_arbitrum_deposit_created') }} AS DC
        ON ED."key" = DC."key"
    LEFT JOIN {{ ref('gmx_v2_arbitrum_markets_data') }} AS MD
        ON DC.market = MD.market
)

--can be removed once decoded tables are fully denormalized
{{
    add_tx_columns(
        model_cte = 'full_data'
        , blockchain = blockchain_name
        , columns = ['from', 'to']
    )
}}


