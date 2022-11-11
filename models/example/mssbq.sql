with 
{{config(materialized='view')}}

bqdbt as (select * from cloudside-academy.asuvathdbt.dbtmsq
),

bqviewms as (
  select
        ID,
        BNAME,
        ECOUNT
     from bqdbt
     ),
     
select * from bqviewms
