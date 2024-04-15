# py_stg__momox__products_jeans_boys.py
# similar to stg__momox__products_jeans_boys.sql

def model(dbt, session):

    source = dbt.source('momox', 'products_jeans_boys')

    return source