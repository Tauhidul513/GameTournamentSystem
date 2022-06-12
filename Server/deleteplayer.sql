create or replace function deleteplayer(p_id in Player1.pid%TYPE,r_egion in Player1.region%TYPE)
		return number
		IS
		
begin
	IF r_egion = 'SEA' THEN
		delete from Player1 where pid=p_id;
		return 0;
		
	ELSIF r_egion = 'EU' THEN
		delete from Player2@site_link where pid=p_id;
		return 1;
	ELSIF r_egion = 'USA' THEN
		delete from Player3@site_link where pid=p_id;
		return 2;
	ELSE
		return 9;
	END IF;
	
commit;		
end deleteplayer;
/