create or replace view teamview as

select tid,tname as Team_Name,sponsor
from Team@site_link;


select * from teamview;

commit;
