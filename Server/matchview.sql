create or replace view matchview as

select m_id,wteam as Winning_TeamID,lteam as Losing_teamID,tourid as Tounament_ID
from Matches@site_link;

select * from matchview;

commit;
