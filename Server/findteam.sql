clear screen;
set serveroutput on;
set verify off;

declare
	t_id number := &team_id;
	t_name varchar2(30);

begin

	select tname
	into t_name
	from Team@site_link
	where tid = t_id;

	dbms_output.put_line(t_name);
	
exception

	when no_data_found then
      dbms_output.put_line('No team found');
	
end;
/