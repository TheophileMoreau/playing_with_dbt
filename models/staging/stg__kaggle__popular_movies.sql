-- stg__kaggle__popular_movies.sql

with source as (
    select * from {{source('kaggle', 'popular_movies')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed