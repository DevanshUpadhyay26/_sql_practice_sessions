-- Operators in SQL

-- AND OR

select * from employee;

select * 
from employee
where Department = "IT" AND Gender = "Female";

select * 
from employee
where Department = "IT" AND (Experience = 2 OR Experience =5);

-- LIKE 
select * from Supplier;

select * 
from Supplier
where name like "P%";

select * 
from Supplier
where name like "_ango%";

-- IN
select * 
from employee;

select *
from employee
where Department in ("IT");

select *
from employee
where Department in (Select dept from managers);

-- Not

select *
from customer;

select *
from customer 
where NOT memberShip = "F";

-- Not Equal to 
-- != <>
select * 
from employee
where Salary <> 45000;

-- IS NULL
SELECT* FROM geeksforgeeks;

select *
from geeksforgeeks as g
where g.coding_score is null;

-- Union
select memberShip
from customer
UNION
select user_id
from geeksforgeeks
order by memberShip asc;

-- between
select * 
from geeksforgeeks
where coding_score BETWEEN 90 AND 99;

-- ALL and ANY
select all productName
from products
where price<20;

select productName
from products
where ProductID = ALL (
						Select ProductID
                        from orderdetails
                        where quantity = 6 OR quantity = 2);
                            
select distinct CategoryID
from products
where ProductID = ANY (
							select ProductID
							from orderdetails);
                            
                            
                            
select *
from products
where ProductID= ANY(select ProductID
					from orderdetails
                    where quantity =9);
                    


-- Exists

select * 
from products
where Exists (select * from orderdetails where products.productid = orderdetails.productid);

select * 
from products
where NOT Exists (select * from orderdetails where products.productid = orderdetails.productid);

-- Case
select * ,
Case
	when price > 18 then "Rich Items"
    when price < 18 then "Low Items"
    ELSE "OK OK"
end as "Texts from cases"
from products;
