select bin(10) from dual;
create database mydata02;

show databases;

use mydata02;

Create table EmployeeInfo
(
EmpID varchar(4),
EmpFname varchar(15),
EmpLname varchar(15),
Department varchar(15),
Projetc varchar(5),
Address varchar(15),
DOB date,
Gender varchar(5)
);

Insert into EmployeeInfo values ('1','Sanjay','Mehra','HR', 'P1','Hyderabad(HYD)','1976/12/01', 'M');

Insert into EmployeeInfo values ('2','Ananya','Mishra','Admin','P2','Delhi(DEL)','1968/05/02', 'F');

Insert into EmployeeInfo
values ('3','Rohan','Diwan','Account', 'P3','Mumbai(BOM)','1980/01/01', 'M');
Insert into EmployeeInfo
values ('4','Sonia','Kulkarni','HR', 'P1','Hyderabad(HYD)','1992/05/02', 'F');
Insert into EmployeeInfo
values ('5','Ankit','Kapoor','Admin', 'P2','Delhi(DEL)','1994/07/03', 'M');

create table EmployeePosition
(
EmpId varchar(4),
EmpPosition varchar(10),
DateOfJoining date,
Salary double(10,2)
);



Insert into EmployeePosition
values ('2','Executive','2019/05/02',75000);
Insert into EmployeePosition
values ('3','Manager','2019/05/01',900000);
Insert into EmployeePosition

values ('2','Lead','2019/05/02',85000);
Insert into EmployeePosition
values ('1','Executive','2019/05/01',300000);

select upper(empfname) ENAME from employeeinfo;

