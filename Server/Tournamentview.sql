create or replace view tournamentview as

select A.tourid,A.title,A.prize,B.tname as Winning_Team
from Tournament@site_link A ,Team@site_link B 
where A.wteam=B.tid;


select * from tournamentview;

commit;
