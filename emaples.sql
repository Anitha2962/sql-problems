create database examples;
create table department(id int primary key,
name varchar(100));

create table employee(id int primary key,
name varchar(100),salary int,
age int,
department_id int foreign key(department_id) references department(id));
select * from  department;

select * from employee;

insert into department(id,name)
values(1,'IT'),
(2,'MECH'),
(3,'CS'),
(4,'CIVIL');

INSERT INTO employee(id,name,salary,age,department_id)
VALUES(100,'ANU',23000,21,1),
(101,'MANU',27000,51,2),
(102,'SINU',4000,45,3),
(103,'TANU',20000,27,4),
(104,'MINU',56000,30,1),
(105,'CHINNU',6000,36,2),
(106,'NINU',5000,56,3),
(107,'MAYA',55000,34,4),
(108,'KAVYA',16000,39,2),
(109,'DIMA',8000,41,1),
(110,'AASHI',46000,70,3);  
--INNER JOIN--
select employee.salary,department.name from employee inner join department on employee.id=department_id

--LEFT JOIN--
select * from employee left join department on employee.name=department.name;

--RIGHT JOIN--
select * from employee right join department  on employee.name=department.name

--FULL JOIN--
SELECT * FROM employee FULL OUTER JOIN department ON employee.id=department.id

--CROSS JOIN--
SELECT * FROM employee CROSS JOIN department;

--SELF JOIN--



CREATE TABLE ABC(ID INT NOT NULL,
AGE INT,
CHECK(AGE>=18));

INSERT INTO ABC(ID,AGE)
VALUES(1,20),
(2,18);