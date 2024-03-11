create database ORGANIZATION

CREATE TABLE Worker(WORKER_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FIRST_NAME char(25),
LAST_NAME char(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25));

INSERT INTO Worker(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values('Monika','Arora',100000,'2014-02-20 09:00:00','HR');
INSERT INTO Worker(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values
('Niharika','Varma',80000,'2014-06-11 09:00:00','Admin');
INSERT INTO Worker(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values
('Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),
('Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
('Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),
('Vipul','Diwan',200000,'2014-06-11 09:00:00','Account'),
('Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),
('Geethika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

drop table Worker;
SELECT * from Worker;

create table Title(WORKER_REF_ID INT,
WORKER_TITILE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE);
drop table Title

SELECT * FROM Title
INSERT INTO Title(WORKER_REF_ID,WORKER_TITILE,AFFECTED_FROM)
VALUES(1,'Manager','2016-02-20 00:00:00'),
(2,'Executive','2016-06-11 00:00:00'),
(8,'Executive','2016-06-11 00:00:00'),
(5,'Manager','2016-06-11 00:00:00'),
(4,'Asst.Manager','2016-06-11 00:00:00'),
(7,'Executive','2016-06-11 00:00:00'),
(6,'Lead','2016-06-11 00:00:00'),
(3,'Lead','2016-06-11 00:00:00');


create table Bonus(WORKER_REF_ID INT,
BONUS_AMOUNT INT,
BONUS_DATE DATETIME,
FOREIGN KEY(WORKER_REF_ID)
REFERENCES Worker(WORKER_ID) ON DELETE CASCADE);
 
 drop table Bonus;
 SELECT * FROM Bonus;

  INSERT INTO Bonus(WORKER_REF_ID,BONUS_AMOUNT,BONUS_DATE)
  VALUES
  (1,5000,'2016-02-20 00:00:00'),
  (2,3000,'2016-06-11 00:00:00'),
  (3,4000,'2016-02-20 00:00:00'),
  (1,4500,'2016-02-20 00:00:00'),
  (2,3500,'2016-06-11 00:00:00');

   select FIRST_NAME AS WORKER_NAME FROM Worker;

 -- Q-1. Write an SQL query to fetch �FIRST_NAME� from Worker table using the alias name as <WORKER_NAME>--


--Q-2. Write an SQL query to fetch �FIRST_NAME� from Worker table in upper case.--

      select UPPER(FIRST_NAME) AS  FIRST_NAME_UPPERCASE FROM Worker;


-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.--

      SELECT DISTINCT DEPARTMENT FROM Worker;


-- Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.

select LEFT(FIRST_NAME,3) AS FIRST_NAME_FIRST_THREE_CHARS FROM Worker;


--Q-5. Write an SQL query to find the position of the alphabet (a) in the first name column Amitabh from Worker table.