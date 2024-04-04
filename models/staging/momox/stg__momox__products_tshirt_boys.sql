-- stg__momox__products_tshirt_boys.sql

with source as (
    select * from {{source('momox', 'products_tshirt_boys')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed