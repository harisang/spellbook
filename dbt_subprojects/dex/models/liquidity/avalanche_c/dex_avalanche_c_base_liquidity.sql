{{ config(
    schema = 'dex_avalanche_c'
    , alias = 'base_liquidity'
    , materialized = 'view'
    )
}}

{% set base_models = [
    ref('uniswap_v4_avalanche_c_base_liquidity')
] %}

WITH base_union AS (
    SELECT *
      FROM (
            {% for base_model in base_models %}
            SELECT
                 blockchain
                , project
                , version
                , block_month
                , block_date
                , block_time
                , block_number
                , id
                , tx_hash
                , evt_index
                , token0
                , token1
                , amount0_raw
                , amount1_raw
            FROM
                {{ base_model }}
            {% if not loop.last %}
               UNION ALL
            {% endif %}
            {% endfor %}
    )
)
select * from base_union
