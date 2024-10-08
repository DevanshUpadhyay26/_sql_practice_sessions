-- Agggregate Functions

-- Count

select count(Quantity)
from orderdetails
where ProductID = 4;

-- Avg
select avg(Quantity) 
from orderdetails;

-- Sum
select sum(Price) 
from products 
where SupplierID = 1;

-- Min 
select productName, price
from products
where price = (select min(price) from products);

-- max
select productName, price
from products
where price = (select max(price) from products);