1. Write a query that produces all pairs of salespeople who are living in the same city.
Exclude combinations of salespeople with themselves as well as duplicate rows with
the order reversed.
Query:- 
SELECT DISTINCT s1.sname ,s2.sname
FROM salespeople s1,salespeople s2
WHERE s1.sname > s2.sname AND s1.city=s2.city;

select * from salespeople;


2. Write a query that produces the names and cities of all customers with the same
rating as Hoffman.
Query:- 

SELECT c1.rating, c1.cname , c2.city
FROM custamer c1, custamer c2
WHERE c1.rating=c2.rating
GROUP BY c1.cname
HAVING c1.rating = (SELECT rating FROM custamer WHERE cname='Hoffman');

SELECT  c1.rating, c1.cname , c2.city
FROM custamer c1, custamer c2
WHERE c1.rating = (SELECT rating FROM custamer WHERE cname='Hoffman')
GROUP BY c1.cname;


select * from custamer;