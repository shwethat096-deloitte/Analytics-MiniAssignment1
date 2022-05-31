{{config(materialized='table')}}
select count(badge_var: "@Id") as No_of_User, badge_var: "@Name" as Name
from "MINIASSIGNMENT1"."MINI1"."BADGESTABLE"
group by Name
order by No_of_User desc
limit 10
