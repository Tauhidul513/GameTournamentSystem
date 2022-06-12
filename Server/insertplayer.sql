set serveroutput on;
set verify on;

create or replace procedure insertplayer(
		p_id Player1.pid%TYPE,
		p_name Player1.pname%TYPE,
		n_ick Player1.nick%TYPE,
		r_egion Player1.region%TYPE,		
		p_rofile Player1.profile%TYPE,
		t_id Player1.tid%TYPE)
		IS
		
begin
	IF r_egion = 'SEA' THEN
		insert into Player1 (pid, pname, nick,region, profile,tid) values (p_id, p_name, n_ick,r_egion, p_rofile,t_id);
		
	ELSIF r_egion = 'EU' THEN
		insert into Player2@site_link (pid, pname, nick,region, profile,tid) values (p_id, p_name, n_ick,r_egion, p_rofile,t_id);
	ELSE
		insert into Player3@site_link (pid, pname, nick,region, profile,tid) values (p_id, p_name, n_ick,r_egion, p_rofile,t_id);		
	END IF;
commit;		
end insertplayer;
/