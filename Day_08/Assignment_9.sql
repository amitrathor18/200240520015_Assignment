1) Write a query that lists each order number followed by the name of the customer
who made the order.
query:-
select o.onum , c.cname
from orders o,custamer c
where o.cnum = c.cnum;

2) Write a query that gives the names of both the salesperson and the customer for
each order along with the order number.
query:-	
select s.sname, c.cname ,o.onum
from salespeople s, custamer c, orders o 
where s.snum = o.snum and c.cnum = o.cnum ;

3) Write a query that produces all customers serviced by salespeople with a
commission above 12%. Output the customer’s name, the salesperson’s name,
and the salesperson’s rate of commission.
query:-	
select s.sname, c.cname, s.comm
from salespeople s , custamer c
where s.snum = c.snum and comm > .12;

4) Write a query that calculates the amount of the salesperson’s commission on each
order by a customer with a rating above 100.
query:-	
SELECT s.sname, c.cname, o.amt*s.comm AS "comm"
FROM orders o, custamer c, salespeople s
WHERE c.rating > 100 AND o.cnum=c.cnum AND o.snum=s.snum;