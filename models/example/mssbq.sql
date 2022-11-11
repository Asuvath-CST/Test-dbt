with 
{{config(materialized='view')}}

bqdbt as (select * from cloudside-academy.asuvathdbt.Branch
),

bqviewms as (
  select
        ID,
        BNAME,
        ECOUNT
     from bqdbt
     ),
     
select * from bqviewms
