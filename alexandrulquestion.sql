{{config(materialized='table')}}
select postsvar:"@Body" as Text, uservar: "@DisplayName" as DisplayName
from posts, userstable
where postsvar:"@PostTypeId" = '1' and uservar:"@DisplayName" like any('alexandrul') and postsvar:"@AcceptedAnswerId" = uservar:"@Id"
