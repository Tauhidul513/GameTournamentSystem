clear screen;

DROP TABLE Player2 CASCADE CONSTRAINTS;
DROP TABLE Player3 CASCADE CONSTRAINTS;
DROP TABLE Team CASCADE CONSTRAINTS;
DROP TABLE Tournament CASCADE CONSTRAINTS;
DROP TABLE Matches CASCADE CONSTRAINTS;
DROP TABLE Kills CASCADE CONSTRAINTS;

CREATE TABLE Team(
	tid int, 
	tname varchar2(30), 
	sponsor varchar2(30),
		PRIMARY KEY(tid));

CREATE TABLE Player2 (
	pid int, 
	pname varchar2(20), 
	nick varchar2(15), 
	region varchar2(10), 
	profile varchar2(30),
	tid int,
        PRIMARY KEY(pid)); 

CREATE TABLE Player3 (
	pid int, 
	pname varchar2(20), 
	nick varchar2(15), 
	region varchar2(10), 
	profile varchar2(30),
	tid int,
        PRIMARY KEY(pid));

CREATE TABLE Tournament (
	tourid int, 
	title varchar2(30), 
	prize int ,
	wteam int,
	FOREIGN KEY(wteam) REFERENCES Team(tid),
        PRIMARY KEY(tourid)); 

CREATE TABLE Matches (
	m_id int,
	wteam int,
	lteam int,
	tourid int,
	FOREIGN KEY(wteam) REFERENCES Team(tid),
	FOREIGN KEY(lteam) REFERENCES Team(tid),	
	FOREIGN KEY(tourid) REFERENCES Tournament(tourid),
        PRIMARY KEY(m_id));

CREATE TABLE Kills (
	pid int,	
	k int,
	d int,
	a int,
	m_id int,
	FOREIGN KEY(m_id) REFERENCES Matches(m_id),
        PRIMARY KEY(m_id,pid));

insert into Team (tid, tname, sponsor) values (1, 'Ashes ESports', 'Startech');
insert into Team (tid, tname, sponsor) values (2, 'Blue Eagles', 'Gigabyte');
insert into Team (tid, tname, sponsor) values (3, 'One Tap', 'Acer');



insert into Player2 (pid, pname, nick,region, profile,tid) values (4, 'Pablo', 'Blitz','EU','valorant.com/14522',2);
insert into Player2 (pid, pname, nick,region, profile,tid) values (5, 'Gomez', 'Sun','EU','valorant.com/46124',2);
insert into Player2 (pid, pname, nick,region, profile,tid) values (6, 'Brian', 'Zero','EU','valorant.com/14231',2);

insert into Player3 (pid, pname, nick,region, profile,tid) values (7, 'John', 'Burning','USA','valorant.com/23567',3);
insert into Player3 (pid, pname, nick,region, profile,tid) values (8, 'James', 'Crossfire','USA','valorant.com/78718',3);
insert into Player3 (pid, pname, nick,region, profile,tid) values (9, 'Sam', 'Judge','USA','valorant.com/89795',3);


insert into Tournament (tourid, title, prize,wteam) values (1, 'Summer Tournament', 35000,1);
insert into Tournament (tourid, title, prize,wteam) values (2, 'Winter Tournament', 25000,3);

insert into Matches (m_id, wteam, lteam,tourid) values (1, 1, 3, 1);
insert into Matches (m_id, wteam, lteam,tourid) values (2, 3, 2, 1);
insert into Matches (m_id, wteam, lteam,tourid) values (3, 1, 2, 1);
insert into Matches (m_id, wteam, lteam,tourid) values (4, 3, 1, 2);
insert into Matches (m_id, wteam, lteam,tourid) values (5, 3, 2, 2);


insert into Kills	(m_id, pid, k,d,a) values (1, 1, 9, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (1, 2, 5, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (1, 3, 4, 4, 0);
insert into Kills	(m_id, pid, k,d,a) values (1, 7, 3, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (1, 8, 2, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (1, 9, 1, 4, 0);


insert into Kills	(m_id, pid, k,d,a) values (2, 7, 3, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (2, 8, 2, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (2, 9, 1, 4, 0);
insert into Kills	(m_id, pid, k,d,a) values (2, 4, 2, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (2, 5, 0, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (2, 6, 1, 4, 0);

insert into Kills	(m_id, pid, k,d,a) values (3, 1, 9, 4, 3);
insert into Kills	(m_id, pid, k,d,a) values (3, 2, 5, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (3, 3, 4, 4, 0);
insert into Kills	(m_id, pid, k,d,a) values (3, 4, 1, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (3, 5, 4, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (3, 6, 1, 4, 0);

insert into Kills	(m_id, pid, k,d,a) values (4, 7, 8, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (4, 8, 6, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (4, 9, 5, 4, 0);
insert into Kills	(m_id, pid, k,d,a) values (4, 1, 3, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (4, 2, 3, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (4, 3, 3, 4, 0);

insert into Kills	(m_id, pid, k,d,a) values (5, 7, 6, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (5, 8, 6, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (5, 9, 5, 4, 0);
insert into Kills	(m_id, pid, k,d,a) values (5, 4, 2, 2, 3);
insert into Kills	(m_id, pid, k,d,a) values (5, 5, 1, 3, 1);
insert into Kills	(m_id, pid, k,d,a) values (5, 6, 1, 4, 0);


commit;
