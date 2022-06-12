SET SERVEROUTPUT ON;
Set verify off;
DECLARE
		p_id Player1.pid %TYPE := &Playerid;
		p_name Player1.pname %TYPE := '&Player_Name';
		n_ick Player1.nick %TYPE := '&Player_Nick';
		r_egion Player1.region %TYPE := '&Region';		
		p_rofile Player1.profile %TYPE := '&Profile_Link';
		t_id Player1.tid %TYPE := &Teamid;
  
BEGIN
	insertplayer(p_id, p_name, n_ick,r_egion, p_rofile,t_id);
END;
/