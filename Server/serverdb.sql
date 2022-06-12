clear screen;

DROP TABLE Player1 CASCADE CONSTRAINTS;

CREATE TABLE Player1 (
	pid int, 
	pname varchar2(20), 
	nick varchar2(15), 
	region varchar2(10), 
	profile varchar2(30),
	tid int,
        PRIMARY KEY(pid)); 



insert into Player1 (pid, pname, nick,region, profile,tid) values (1, 'Raaz', 'Xenos','SEA','valorant.com/123124',1);
insert into Player1 (pid, pname, nick,region, profile,tid) values (2, 'Fahad', 'Oldie','SEA','valorant.com/18724',1);
insert into Player1 (pid, pname, nick,region, profile,tid) values (3, 'Tipu', 'Rush','SEA','valorant.com/12794',1);




commit;
