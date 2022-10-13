-- stg_t1.sql

with

source as (

    select * from {{ source('raw_src','t1') }}

),

renamed as (

    select
        CAST(id as integer) as emp_id,
        name as emp_name,
        _loaded_ts

    from source

)

select * from renamed