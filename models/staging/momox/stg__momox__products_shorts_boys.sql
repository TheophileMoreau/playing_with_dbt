-- stg__momox__products_shorts_boys.sql

with source as (
    select * from {{source('momox', 'products_shorts_boys')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed