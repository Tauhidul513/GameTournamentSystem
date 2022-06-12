create or replace view killview as

select m_id as Match_ID,pid as Player_ID,k as Kills,d as Deaths,a as Assists,(nvl((k / NULLIF( d, 0 )),k)) as KDA
from Kills@site_link;

select * from killview;

commit;
