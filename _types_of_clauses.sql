SET SQL_SAFE_UPDATES = 0;
-- SQL Clauses
CREATE TABLE Emp1(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    Age int,
  mob int
);

-- Insert some sample data into the Customers table
INSERT INTO Emp1 (EmpID, Name,Country, Age, mob)
VALUES (1, 'Shubham',  'India','23','738479734'),
       (2, 'Aman ',  'Australia','21','436789555'),
       (3, 'Naveen', 'Sri lanka','24','34873847'),
       (4, 'Aditya',  'Austria','21','328440934'),
       (5, 'Nishant', 'Spain','22','73248679');

-- --------------------------------------------------Where Clause-----------------------------------------------------
-- Select * from Emp1;

-- select * from Emp1 where EmpID = 4;

-- select EmpID, Name, Country
-- from Emp1
-- where EmpID = 5;

-- select * 
-- from Emp1
-- where EmpID BETWEEN 1 and 2;

-- select * 
-- from Emp1
-- where Age <= 21;

-- select *
-- from emp1
-- where Name Like "A%";

-- select *
-- from emp1
-- where age in (21,22);

-- --------------------------------------------------With Clause-----------------------------------------------------


-- with average_age (avg_age) as 
-- (select avg(age)  from emp)

-- select * 
-- from emp e join average_age averg
-- where e.age <> averg.avg_age;

-- --------------------------------------------------Order By Clause-----------------------------------------------------
-- select * from Employee;

-- select * 
-- from employee
-- order by Salary desc;

-- select * 
-- from employee
-- order by experience asc;

-- --------------------------------------------------Group By Clause-----------------------------------------------------

-- select * from employee;


-- select EmployeeId, Department, avg(Salary),Experience
-- from employee
-- where Experience <7
-- group by Department, EmployeeId, Experience;

-- --------------------------------------------------Having Clause-----------------------------------------------------
-- select * from employee;

-- select EmployeeId, sum(Salary), Department, Experience
-- from employee
-- group by EmployeeId, Department, Experience
-- having sum(Salary) =50000;

-- select EmployeeId ,Department, Experience
-- from employee
-- group by EmployeeId ,department, Experience
-- Having Department = "IT";

-- ---------------------------------------------LIMIT---------------------------------------------------
select * from employee;


select EmployeeId, department, Experience
from employee
where Experience <7
limit 2;

select *
from employee
limit 3,1;

