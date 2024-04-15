-- int_all_momox_articles.sql

with stg__momox__products_jeans_boys as (
    select * from {{ref('stg__momox__products_jeans_boys')}}
),

stg__momox__products_longsleeve_boys as (
    select * from {{ref('stg__momox__products_longsleeve_boys')}}
),

stg__momox__products_shorts_boys as (
    select * from {{ref('stg__momox__products_shorts_boys')}}
),

stg__momox__products_tshirt_boys as (
    select * from {{ref('stg__momox__products_tshirt_boys')}}
),

stg__momox__products_poloshirt_boys as (
    select * from {{ref('stg__momox__products_poloshirt_boys')}}
),


joined as (

    select
        PRODUCT_ID,
        PRODUCT_URL,
        PRODUCT_CATEGORY,
        PRODUCT_GENDER,
        PRODUCT_BRAND,
        PRODUCT_NAME,
        PRODUCT_PRICE,
        PRODUCT_DISCOUNT,
        PRODUCT_FORMER_PRICE,
        COULEUR_1,
        COUPE_1,
        DETAILS_1,
        DETAILS_2,
        DETAILS_3,
        ETAT_1,
        LONGUEUR_1,
        MATIERE_PRINCIPALE_1,
        MATIERE_PRINCIPALE_2,
        MATIERE_PRINCIPALE_3,
        MATIERE_PRINCIPALE_4,
        NUMERO_DARTICLE_1,
        TAILLE_1,
        TAILLE_2,
        EXTRACTED_AT
    from
        stg__momox__products_jeans_boys
    union all
    select
        PRODUCT_ID,
        PRODUCT_URL,
        PRODUCT_CATEGORY,
        PRODUCT_GENDER,
        PRODUCT_BRAND,
        PRODUCT_NAME,
        PRODUCT_PRICE,
        PRODUCT_DISCOUNT,
        PRODUCT_FORMER_PRICE,
        COULEUR_1,
        null as COUPE_1,
        DETAILS_1,
        null as DETAILS_2,
        null as DETAILS_3,
        ETAT_1,
        null as LONGUEUR_1,
        MATIERE_PRINCIPALE_1,
        MATIERE_PRINCIPALE_2,
        null as MATIERE_PRINCIPALE_3,
        null as MATIERE_PRINCIPALE_4,
        NUMERO_DARTICLE_1,
        TAILLE_1,
        null as TAILLE_2,
        EXTRACTED_AT
    from
        stg__momox__products_longsleeve_boys
    union all
    select
        PRODUCT_ID,
        PRODUCT_URL,
        PRODUCT_CATEGORY,
        PRODUCT_GENDER,
        PRODUCT_BRAND,
        PRODUCT_NAME,
        PRODUCT_PRICE,
        PRODUCT_DISCOUNT,
        PRODUCT_FORMER_PRICE,
        COULEUR_1,
        null as COUPE_1,
        DETAILS_1,
        null as DETAILS_2,
        null as DETAILS_3,
        ETAT_1,
        null as LONGUEUR_1,
        MATIERE_PRINCIPALE_1,
        MATIERE_PRINCIPALE_2,
        null as MATIERE_PRINCIPALE_3,
        null as MATIERE_PRINCIPALE_4,
        NUMERO_DARTICLE_1,
        TAILLE_1,
        null as TAILLE_2,
        EXTRACTED_AT
    from
        stg__momox__products_poloshirt_boys
    union all
    select
        PRODUCT_ID,
        PRODUCT_URL,
        PRODUCT_CATEGORY,
        PRODUCT_GENDER,
        PRODUCT_BRAND,
        PRODUCT_NAME,
        PRODUCT_PRICE,
        PRODUCT_DISCOUNT,
        PRODUCT_FORMER_PRICE,
        COULEUR_1,
        null as COUPE_1,
        DETAILS_1,
        DETAILS_2,
        null as DETAILS_3,
        ETAT_1,
        LONGUEUR_1,
        MATIERE_PRINCIPALE_1,
        MATIERE_PRINCIPALE_2,
        MATIERE_PRINCIPALE_3,
        null as MATIERE_PRINCIPALE_4,
        NUMERO_DARTICLE_1,
        TAILLE_1,
        TAILLE_2,
        EXTRACTED_AT
    from
        stg__momox__products_shorts_boys
    union all
    select
        PRODUCT_ID,
        PRODUCT_URL,
        PRODUCT_CATEGORY,
        PRODUCT_GENDER,
        PRODUCT_BRAND,
        PRODUCT_NAME,
        PRODUCT_PRICE,
        PRODUCT_DISCOUNT,
        PRODUCT_FORMER_PRICE,
        COULEUR_1,
        null as COUPE_1,
        DETAILS_1,
        DETAILS_2,
        null as DETAILS_3,
        ETAT_1,
        null as LONGUEUR_1,
        MATIERE_PRINCIPALE_1,
        null as MATIERE_PRINCIPALE_2,
        null as MATIERE_PRINCIPALE_3,
        null as MATIERE_PRINCIPALE_4,
        NUMERO_DARTICLE_1,
        TAILLE_1,
        null as TAILLE_2,
        EXTRACTED_AT
    from
        stg__momox__products_tshirt_boys
)

select * from joined