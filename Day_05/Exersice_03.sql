select * from 

use mydata01

show tables;

select * from s;

select * from j;

select * from p;


-- Q01 Display all the Supplier names with the initial letter capital.

Select 
CONCAT
(
UPPER(SUBSTRING(sname,1,1)),
LOWER(SUBSTRING(sname,2))
)
AS Name from s;


-- Q02 Display all the Supplier names in upper case.

select ucase(Sname) from s;

-- Q03. Display all the Supplier names in lower case.

select lcase(Sname) from s;

-- Q04. Display all the Supplier names padded to 25 characters, with spaces on the left.

SELECT lpad(Sname, 25,' ') from s;

-- Q05. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
--      HINT: REPLACE.

select replace(sname,'la','ro') from s;

-- Q06. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.

select replace(sname,'l','r'),replace(sname,'a','o') from s;

select tranlate (sname,'la','ro') from s;

select replace(replace(sname,'l','r'),'a','o') as "Sname" from s;

-- Q07 Display the Supplier names and the lengths of the names.

select Sname, length(sname) from s;

-- Q08. Use the soundex function to search for a supplier by the name of ‘BLOKE’.

select * from s 
where soundex(sname) = soundex( 'suunny');

commit;
