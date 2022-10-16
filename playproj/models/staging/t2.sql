-- stg_t2.sql

with

source as (

    select * from {{ source('raw_src','t2') }}

),

renamed as (

    select
        CAST(id as integer) as emp_id,
        {{ adapter.quote('desc') }} as emp_desc

    from source

)

select * from renamed