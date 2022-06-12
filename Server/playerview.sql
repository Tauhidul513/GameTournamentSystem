create or replace view playerview as

select pid,pname as Player_Name,nick as Game_nick,region,profile,tid as Team_id
from Player1
UNION
select pid,pname,nick,region,profile,tid
from Player2@site_link
UNION
select pid,pname,nick,region,profile,tid
from Player3@site_link;

select * from playerview;

commit;
