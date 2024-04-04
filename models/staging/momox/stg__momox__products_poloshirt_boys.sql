-- stg__momox__products_poloshirt_boys.sql

with source as (
    select * from {{source('momox', 'products_poloshirt_boys')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed