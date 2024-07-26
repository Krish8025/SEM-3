--CREATE TABLE table_name
CREATE DATABASE CSE_3B_419
CREATE TABLE DEPOSIT
(
	ACTNO	INT,
	CNAME	VARCHAR(50),
	BNAME	VARCHAR(50),
	AMOUNT	DECIMAL(8,2),
	ADATE	DATETIME
)

--INSERT DATA INTO TABLE USING QUERY

--INSERT INTO table_name (col_name1, col_name2, ...)
--VALUES
--(value1, value2, ...)
INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(101,'ANIL', 'VRCE', 1000.00, '1-MAR-95')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(102,'SUNIL','AJNI',5000.00,'4-JAN-96')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(103, 'MEHUL', 'KAROLBAGH', 3500.00,'17-NOV-95')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(104, 'MADHURI', 'CHANDI', 1200.00, '17-DEC-95')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(105, 'PRMOD','M.G. ROAD',3000.00,'27-MAR-96')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(106,'SANDIP', 'ANDHERI',2000.00, '31-MAR-96')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(107, 'SHIVANI', 'VIRAR', 1000.00, '5-9-95')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(108, 'KRANTI', 'NEHRU PLACE', 5000.00, '2-7-95')

INSERT INTO DEPOSIT(ACTNO, CNAME, BNAME, AMOUNT, ADATE)
VALUES
(109, 'MINU', 'POWAI', 7000.00, '10-8-95')

SELECT * FROM DEPOSIT



--BRANCH TABLE

CREATE TABLE BRANCH
(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
)

--INSERT INTO table_name
--VALUES
--(value1, value2, value3)

INSERT INTO BRANCH
VALUES
('VRCE', 'NAGPUR')

INSERT INTO BRANCH
VALUES
('AJNI', 'NAGPUR')

INSERT INTO BRANCH
VALUES
('KAROLBAGH','DELHI')

INSERT INTO BRANCH
VALUES
('CHANDI', 'DELHI')

INSERT INTO BRANCH
VALUES
('DHARAMPETH','NAGPUR')

INSERT INTO BRANCH
VALUES
('M.G. ROAD', 'BANGLORE')

INSERT INTO BRANCH
VALUES
('ANDHERI','BOMBAY')

INSERT INTO BRANCH
VALUES
('VIRAR','BOMBAY')

INSERT INTO BRANCH
VALUES
('NEHRU PLACE','DELHI')

INSERT INTO BRANCH
VALUES
('POWAI','BOMBAY') 

SELECT * FROM BRANCH


--CUSTOMERS

CREATE TABLE CUSTOMERS
(
	CNAME	VARCHAR(50),
    CITY	VARCHAR(50)
)

--INSERT INTO table_name
--VALUES
--('value1','value2')
--('value3','value4')


INSERT INTO CUSTOMERS
VALUES
('ANIL', 'CALCUTTA'),
('SUNIL', 'DELHI'), 
('MEHUL', 'BARODA'), 
('MANDAR', 'PATNA'), 
('MADHURI','NAGPUR'), 
('PRAMOD','NAGPUR'), 
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI', 'BOMBAY'),
('NAREN', 'BOMBAY')

SELECT * FROM CUSTOMERS


--BORROW

CREATE TABLE BORROW
(
	LOANNO	INT,
	CNAME	VARCHAR(50),
	BNAME	VARCHAR(50),
	AMOUNT	DECIMAL(8,2)
)


INSERT INTO BORROW
VALUES
(201, 'ANIL', 'VRCE', 1000.00), 
(206,'MEHUL', 'AJNI', 5000.00),
(311,'SUNIL', 'DHARAMPETH', 3000.00), 
(321,'MADHURI', 'ANDHERI' ,2000.00), 
(375,'PRMOD', 'VIRAR' ,8000.00), 
(481,'KRANTI', 'NEHRU PLACE', 3000.00) 

SELECT * FROM BORROW
SELECT * FROM DEPOSIT
SELECT * FROM BORROW

------LAB-3-----
CREATE TABLE CRICKET
(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
)

INSERT INTO CRICKET (NAME , CITY , AGE)
VALUES
('Sachin Tendulkar',' Mumbai', 30),
('Rahul Dravid','Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina','Gujarat', 3)
SELECT * FROM CRICKET

SELECT * INTO WORLDCUP
FROM CRICKET
SELECT * FROM WORLDCUP

SELECT NAME,CITY INTO T20
FROM CRICKET
WHERE 1=0
SELECT * FROM T20

SELECT * INTO IPL
FROM CRICKET
WHERE 1=0
SELECT * FROM IPL

------update----


UPDATE DEPOSIT SET AMOUNT =5000 WHERE AMOUNT = 3000
UPDATE BORROW SET BNAME='C.G.ROAD' WHERE CNAME='ANIL'
UPDATE DEPOSIT SET ACTNO=111 WHERE CNAME='SANDIP'
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE BNAME='MEHUL'
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO BETWEEN 103 AND 107
UPDATE DEPOSIT SET ADATE='01-APR-1995' WHERE CNAME='ANIL'
UPDATE DEPOSIT SET AMOUNT=10000 WHERE CNAME='MINU'
UPDATE DEPOSIT SET AMOUNT=5000,ADATE='01-APR-1996' WHERE CNAME='PRAMOD'

UPDATE BORROW SET AMOUNT=AMOUNT+AMOUNT*0.1
UPDATE DEPOSIT SET AMOUNT=AMOUNT+AMOUNT*0.2


---------------------ALTER---------------
---A---
--1. Add two more columns City VARCHAR (20) and Pincode INT. 
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35). 
--3. Change the data type DECIMAL to INT in amount Column. 
--4. Rename Column ActNo to ANO. 
--5. Delete Column City from the DEPOSIT table. 
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),PINCODE INT

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'

SELECT * FROM DEPOSIT

ALTER TABLE DEPOSIT
DROP COLUMN CITY

EXEC SP_RENAME 'DEPOSIT','DEPOSITE_DETAIL'

-----B-----
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table. 
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table. 
--3. Rename Column CNAME to CustomerName. 

EXEC SP_RENAME 'DEPOSITE_DETAIL.ADATA','AOOPENDATA'

ALTER TABLE DEPOSITE_DETAIL DROP COLUMN AOPENDATE

EXEC SP_RENAME 'DEPOSITE_DETAIL.CNAME','CUSTOMER_NAME'

-----------------------DELETE,TRUNCATE,DROP----------

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.  
--2. Delete all the accounts CHANDI BRANCH. 
--3. Delete all the accounts having account number (ANO) is greater than 105. 
--4. Delete all the records of Deposit_Detail table. (Use Truncate) 
--5. Remove Deposit_Detail table. (Use Drop)

SELECT * FROM DEPOSITE_DETAIL

DELETE FROM DEPOSITE_DETAIL 
WHERE AMOUNT >=4000

DELETE FROM DEPOSITE_DETAIL 
WHERE BNAME='CHANDI BRANCH'

DELETE FROM DEPOSITE_DETAIL
WHERE ANO>105

TRUNCATE TABLE DEPOSITE_DETAIL

DROP TABLE DEPOSITE_DETAIL

----B-----
CREATE TABLE EMPLOYEE_MASTER
(
EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL (8,2), 
City VARCHAR(20)
)



------------------Lab-5--------------------------
CREATE TABLE STUDENT
(
STUID INT,
FIRSTNAME VARCHAR(25),
LASTNAME VARCHAR(25),
WEBSITE VARCHAR(50),
CITY VARCHAR(25) ,
ADDRESS VARCHAR(100),
)
INSERT INTO STUDENT VALUES
(1011 ,'KEYUR','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'', Rajkot' ),
(1022 ,'Hardik', 'Shah',' digminecraft.com','Ahmedabad', '“Ram Krupa”, Raiya Road '),
(1033 ,'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
(1044 ,'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '“Jig’s Home”, Narol'),
(1055,'Harmit','Mitel','@me.darshan.com', 'Rajkot','B-55, Raj Residency '),
(1066 ,'Ashok','Jani', NULL, 'Baroda' ,'A502, Club House Building' )

SELECT * FROM STUDENT

--1. Display the name of students whose name starts with ‘k’. 
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'K%'
--2. Display the name of students whose name consists of five characters. 
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_____'
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters. 
SELECT FIRSTNAME,LASTNAME FROM STUDENT WHERE CITY LIKE '_____A'
--4. Display all the students whose last name ends with ‘tel’. 
SELECT * FROM STUDENT WHERE LASTNAME LIKE '%TEL'
--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'HA%T'
--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'K_Y%'
--7. Display the name of students having no website and name consists of five characters. 
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_____' AND WEBSITE IS NULL
--8. Display all the students whose last name consist of ‘jer’.
SELECT *  FROM STUDENT WHERE LASTNAME LIKE '%JER%'
--9. Display all the students whose city name starts with either ‘r’ or ‘b’. 
SELECT * FROM STUDENT WHERE CITY LIKE '[R,B]%'
--10. Display all the name students having websites. 
SELECT * FROM STUDENT WHERE FIRSTNAME IS NOT NULL
--11. Display all the students whose name starts from alphabet A to H. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE'[A-H]%'
--12. Display all the students whose name’s second character is vowel. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%'
--13. Display the name of students having no website and name consists of minimum five characters. 
SELECT FIRSTNAME FROM STUDENT WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____%'
--14. Display all the students whose last name starts with ‘Pat’.   
SELECT * FROM STUDENT WHERE LASTNAME LIKE 'PAT%'
--15. Display all the students whose city name does not starts with ‘b’.
SELECT * FROM STUDENT WHERE FIRSTNAME NOT LIKE 'B%'

-------------B----------------
--1. Display all the students whose name starts from alphabet A or H.
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE'[A,H]%'
--2. Display all the students whose name’s second character is vowel and of and start with H. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE'H[A,E,I,O,U]%'
--3. Display all the students whose last name does not ends with ‘a’. 
SELECT * FROM STUDENT WHERE LASTNAME NOT LIKE '%A'
--4. Display all the students whose first name starts with consonant. 
SELECT * FROM STUDENT WHERE FIRSTNAME NOT LIKE'[A,E,I,O,U]%'
--5. Display all the students whose website contains .net 
SELECT * FROM STUDENT WHERE WEBSITE LIKE '%.NET'

--------------C-----------------
--1. Display all the students whose address consist of -. 
SELECT * FROM STUDENT WHERE ADDRESS LIKE '%-%'
--2. Display all the students whose address contains single quote or double quote. 
SELECT * FROM STUDENT WHERE ADDRESS LIKE '%['',""]%'
--3. Display all the students whose website contains @. 
SELECT * FROM STUDENT WHERE WEBSITE LIKE '%@%'
--4. Display all the names those are either four or five characters. 
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE ''


-----------------Lab-7----------------

CREATE TABLE EMP
(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
JDATE DATETIME,
CITY VARCHAR(50)
)
INSERT INTO EMP(EID,EName,Department,Salary,JDate,City)
VALUES
(101,'Rahul','Admin',56000,'1-Jan-90', 'Rajkot' ),
(102, 'Hardik','IT', 18000, '25-Sep-90', 'Ahmedabad'), 
(103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda'), 
(104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot'), 
(105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar'), 
(106, 'Priya', 'IT', 9000, '18-Oct-90', 'Ahmedabad'), 
(107, 'Bhoomi', 'HR', 34000, '25-Dec-91','Rajkot')


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select max(Salary) as maximum,min(Salary) as minimum from EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
select sum(Salary) as Total_Sal,avg(Salary) as Average_Sal from EMP

--3. Find total number of employees of EMPLOYEE table.
select count(EID) as countNO from EMP

--4. Find highest salary from Rajkot city.
select max(Salary) as MaxinCity from EMP where City = 'Rajkot'
--5. Give maximum salary from IT department.
select max(Salary) as maxIt from EMP  where Department='IT'
--6. Count employee whose joining date is after 8-feb-91.
select count(EID)  from EMP  where JDate > '8-feb-91'

--7. Display average salary of Admin department.
select avg(Salary) as AdminDepartment from EMP where Department = 'Admin'
--8. Display total salary of HR department.
select sum(Salary) as total from EMP where Department = 'HR'
--9. Count total number of cities of employee without duplication.
select count(distinct (city)) from EMP
--10. Count unique departments.
select count(distinct (Department)) from EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(Salary) as MinCity from EMP where City = 'Ahmedabad'
--12. Find city wise highest salary.
select City,max(Salary) as citywise from EMP group by City
--13. Find department wise lowest salary.
select Department,min(Salary) as Departmentwise from EMP group by Department
--14. Display city with the total number of employees belonging to each city.
select City,count(City) from EMP group by City

--15. Give total salary of each department of EMP table.
select Department,sum(Salary) from EMP group by Department
--16. Give average salary of each department of EMP table without displaying the respective department
--name.
select avg(Salary) as average from EMP group by Department

---------part-b-------
--1. Count the number of employees living in Rajkot. 
SELECT COUNT(EID) AS LIVINGINRAJKOT FROM EMP WHERE CITY = 'RAJKOT'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
SELECT (MAX(SALARY)-MIN(SALARY)) AS DIFFERENCE FROM EMP
--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) FROM EMP WHERE JDATE<'1-JAN-1991'



----------Lab-8---------
create table SALES_DATA(

REGION VARCHAR(50),
PRODUCT VARCHAR(50),
SALES_AMOUNT INT,
YEAR INT

);


INSERT INTO SALES_DATA VALUES('North America','WATCH',1500,2023)
INSERT INTO SALES_DATA VALUES('Europe','Mobile',1200,2023)
INSERT INTO SALES_DATA VALUES('Asia','WATCH',1800,2023)
INSERT INTO SALES_DATA VALUES('North AMERICA','TV',900,2024)
INSERT INTO SALES_DATA VALUES('Europe','WATCH',2000,2024)
INSERT INTO SALES_DATA VALUES('Asia','Mobile',1000,2024)
INSERT INTO SALES_DATA VALUES('North America','Mobile',1600,2023)
INSERT INTO SALES_DATA VALUES('Europe','TV',1500,2023)
INSERT INTO SALES_DATA VALUES('Asia','TV',1100,2024)
INSERT INTO SALES_DATA VALUES('North America','WATCH',1700,2024)

select * from SALES_DATA


------------part-a-------
--1. Display Total Sales Amount by Region. 
SELECT REGION ,COUNT(SALES_AMOUNT)
FROM SALES_DATA 
GROUP BY REGION
--2. Display Average Sales Amount by Product
SELECT PRODUCT,AVG(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY PRODUCT
--3. Display Maximum Sales Amount by Year 
SELECT YEAR,MAX(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY YEAR
--4. Display Minimum Sales Amount by Region and Year 
SELECT REGION,YEAR,MIN(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY REGION,YEAR
--5. Count of Products Sold by Region 
SELECT REGION,COUNT(PRODUCT)
FROM SALES_DATA
GROUP BY REGION
--6. Display Sales Amount by Year and Product 
SELECT YEAR,PRODUCT,SUM(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY YEAR,PRODUCT
--7. Display Regions with Total Sales Greater Than 5000 
SELECT REGION,SUM(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY REGION
HAVING SUM(SALES_AMOUNT)>5000
--8. Display Products with Average Sales Less Than 10000 
SELECT PRODUCT,AVG(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY PRODUCT
HAVING AVG(SALES_AMOUNT)<10000
--9. Display Years with Maximum Sales Exceeding 500 
SELECT YEAR,MAX(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY YEAR
HAVING MAX(SALES_AMOUNT)>500
--10. Display Regions with at Least 3 Distinct Products Sold. 
SELECT REGION ,COUNT(PRODUCT)
FROM SALES_DATA 
GROUP BY REGION
HAVING COUNT(PRODUCT)>=3
--11. Display Years with Minimum Sales Less Than 1000 
SELECT YEAR,MIN(SALES_AMOUNT)
FROM SALES_DATA
GROUP BY YEAR
HAVING MIN(SALES_AMOUNT)<1000
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount 
SELECT REGION ,SUM(SALES_AMOUNT)
FROM SALES_DATA 
GROUP BY REGION
ORDER BY SUM(SALES_AMOUNT)