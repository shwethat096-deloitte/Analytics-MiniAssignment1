{{config(materialized='table')}}
select commentsvar: "@Text" as Text
from comments , userstable
where uservar:"@Id" = commentsvar:"@UserId" and
uservar:"@DisplayName" like any('%nau%')
