SET SERVEROUTPUT ON
DECLARE
	p_id Player1.pid%TYPE := &Player_id;
	p Player1.pid%TYPE;
	v Player1.pid%TYPE := 9;
	r Player1.region%TYPE;
		CURSOR mycursor IS
		SELECT pid,region from Player1 union select pid,region from Player2@site_link union select pid,region from Player3@site_link;
BEGIN
	OPEN mycursor;
		LOOP
			FETCH mycursor INTO p,r;
			EXIT WHEN mycursor%notfound;
			IF p = p_id THEN
				v:=deleteplayer(p,r);
			END IF;
		END LOOP;
	CLOSE mycursor;
	IF v = 0 THEN
		DBMS_OUTPUT.PUT_LINE('Successfully deleted from Player1');	
	ELSIF v = 1 THEN
		DBMS_OUTPUT.PUT_LINE('Successfully deleted from Player2');
	ELSIF v = 2 THEN
		DBMS_OUTPUT.PUT_LINE('Successfully deleted from Player3');
	ELSE
		DBMS_OUTPUT.PUT_LINE('Not found');
	END IF;
END;
/