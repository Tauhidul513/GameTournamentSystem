create or replace view totalkillview as

select B.pname as Player_Name,sum(A.k) as Total_Kills
from Kills@site_link A 
join Player1 B on A.pid=B.pid group by A.pid,B.pname
union
select B.pname as Player_Name,sum(A.k) as Total_Kills
from Kills@site_link A 
join Player2@site_link B on A.pid=B.pid group by A.pid,B.pname
union
select B.pname as Player_Name,sum(A.k) as Total_Kills
from Kills@site_link A 
join Player3@site_link B on A.pid=B.pid group by A.pid,B.pname order by Total_Kills;

select * from totalkillview;

commit;
