{{ config(
    schema = 'uniswap_v4_ink'
    , alias = 'base_trades'
    , materialized = 'incremental'
    , file_format = 'delta'
    , incremental_strategy = 'merge'
    , unique_key = ['tx_hash', 'evt_index']
    , incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

{{
    uniswap_compatible_v4_trades(
        blockchain = 'ink'
        , project = 'uniswap'
        , version = '4'
        , PoolManager_call_Swap = source('uniswap_v4_ink', 'PoolManager_call_Swap') 
        , PoolManager_evt_Swap = source('uniswap_v4_ink', 'PoolManager_evt_Swap') 
    )
}}