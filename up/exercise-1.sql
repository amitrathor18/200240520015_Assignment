show databases;
create database exercise;
use exercise;
create table SEMP 
(	
	Empno char(4),
	Empname char(20),
    Basic float(9,2),
    Deptno char(2),
    Depthead char(4)
);
show tables;

create table SDEPT 
(	
	Deptno char(2),
	Deptname char(15)
);

insert into sdept values(10,'Development');
insert into sdept values(20,'Training');

select * from sdept;

insert into semp(Empno,Empname,basic,deptno) values(0001,'Sunil',6000,10);
Alter table  semp modify deptno char(4); 
describe semp;
select * from semp;
insert into semp(Empno,Empname,basic,deptno) values(0002,'Hiren',8000,20);
insert into semp(Empno,Empname,basic,deptno,depthead) values(0003,'Ali',4000,10,0001);
insert into semp(Empno,Empname,basic,depthead) values(0004,'George',6000,0002);

create table S 
(	
	`S#` char(2),
	Sname char(20),
    Staus int(2),
    City char(2)
);

Alter table s change Staus status int ;

create table P
(	
	`P#` char(2),
	Pname char(20),
    Color char(10),
    Weight int(3),
    City char(2)
);

create table J
(	
	`J#` char(2),
	Jname char(20),
    City char(2)
);

create table SPJ
(	
	`S#` char(2),
	`P#` char(2),
	`J#` char(2),
    Qty int(3)
);

show tables;

insert into s values('s1','john',10,'London');
Alter table s modify city char(10);
insert into s values('s3','sunny',30,'delhi');
insert into s values('s4','monty',20,'paris');
insert into s values('s5','lamao',50,'athens');
-- 5. Display all the data from the S table.--
select * from s;

insert into p values('p1','keyboard','black',30,'delhi');
Alter table p modify city char(10);
insert into p values('p2','mouse','blue',20,'mumbai');
insert into p values('p3','ram','black',5,'goa');
select * from p;

insert into j values('j1','abc','delhi');
insert into j values('j2','pqr','mumbai');
insert into j values('j3','xyz','goa');
insert into j values('j4','lmn','athens');
insert into j values('j5','efg','paris');
select * from j;

insert into spj values('s1','p2','j1',10);
insert into spj values('s2','p1','j3',15);
insert into spj values('s3','p3','j2',5);
select * from spj;

-- 6. Display only the S# and SNAME fields from the S table.--
select `s#`,sname from s;

-- 7.Display the PNAME and COLOR from the P table for the CITY=”delhi”.--
select Pname,color from p where City="delhi";

-- 8. Display all the Suppliers from London.--
select * from s where city="London";

-- 9. Display all the Suppliers from Paris or Athens.--
select * from s where CITY='Paris' or CITY='Athens';

-- 10. Display all the Projects in Athens.--
select * from j where city="athens";

-- 11. Display all the Partnames with the weight between 12 and 14 (inclusive of both).--
select Pname,weight from p where weight between 12 and 14;

-- 12. Display all the Suppliers with a Status greater than or equal to 20.--
select sname,staus from s where staus>=20;

-- 13. Display all the Suppliers except the Suppliers from London. --
select * from s where city != "London";

-- 14. Display only the Cities from where the Suppliers come from. --
select city from s;

-- 15. Assuming that the Part Weight is in GRAMS, display the same in MILLIGRAMS and KILOGRAMS. --
select weight*1000 from p;    -- ->for milligrams--
select weight/1000 from p; 	 -- ->for kilograms--
