use mydata;
select * from custamer;

select * from orders
where odate ='1990-10-03' or odate = '1990-10-04';
/*
select * from orders
where odate <='1990-10-03' and Odate >='1990-10-04';
*/
select * from orders
where odate Between '1990-10-03' and '1990-10-04';


select * from orders
where  Snum=1001 or Snum=1004;
/*
select * from custamer
where cname in('%A', '%B');
*/
select cname from customar
where cname <'G%';
 

/*
select * from custamer
where cname <'%A' and  cname>'%B';
*/
select * from custamer
where cname like 'c%';

select * from orders
where Amt > 0 ;