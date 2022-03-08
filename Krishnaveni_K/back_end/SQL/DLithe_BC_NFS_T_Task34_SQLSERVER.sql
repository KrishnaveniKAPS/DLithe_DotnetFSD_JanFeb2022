

CREATE TABLE Product
(ProductID INT, ProductName VARCHAR(100) )
GO
 
CREATE TABLE ProductDescription
(ProductID INT, ProductDescription VARCHAR(800) )
GO
 
INSERT INTO Product VALUES (680,'HL Road Frame - Black, 58')
,(706,'HL Road Frame - Red, 58')
,(707,'Sport-100 Helmet, Red')
GO
 
INSERT INTO ProductDescription VALUES (680,'Replacement mountain wheel for entry-level rider.')
,(706,'Sturdy alloy features a quick-release hub.')
,(707,'Aerodynamic rims for smooth riding.')
GO
--We will create a simple stored procedure that joins two tables and returns the result

CREATE PROCEDURE GetProductDesc
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
 
END

--Creating a stored procedure with parameters
CREATE PROCEDURE GetProductDesc_withparameters
(@PID INT)
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
WHERE P.ProductID=@PID
 
END
--Creating a stored procedure with default parameters values

CREATE PROCEDURE GetProductDesc_withDefaultparameters
(@PID INT =706)
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
WHERE P.ProductID=@PID
 
END
--Creating a stored procedure with an output parameter
CREATE TABLE Employee (EmpID int identity(1,1),EmpName varchar(500))

CREATE PROCEDURE ins_NewEmp_with_outputparamaters
(@Ename varchar(50),
@EId int output)
AS
BEGIN
SET NOCOUNT ON
 
INSERT INTO Employee (EmpName) VALUES (@Ename)
 
SELECT @EId= SCOPE_IDENTITY()
 
END

--Executing the stored procedures with output parameters is bit different. We must declare the variable to store the value returned by the output parameter.
declare @EmpID INT
 
EXEC ins_NewEmp_with_outputparamaters 'Andrew', @EmpID OUTPUT
 
SELECT @EmpID


use DLithe
-- Create Student Table
CREATE TABLE Student
(
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(50),
  DOB DATETIME,
  Branch VARCHAR(50)
)

-- Populate the Student Table with test data
INSERT INTO Student VALUES(1, 'Rocky', 'Male','1996-02-29 10:53:27.060', 'CSE')
INSERT INTO Student VALUES(2, 'Daisy', 'Female','1995-05-25 10:53:27.060', 'CSE')
INSERT INTO Student VALUES(3, 'Lucky', 'Male','1995-04-19 10:53:27.060', 'ETC')
INSERT INTO Student VALUES(4, 'Dora', 'Female','1996-03-17 10:53:27.060', 'ETC')
INSERT INTO Student VALUES(5, 'Jancy', 'Female','1997-01-15 10:53:27.060', 'CSE')

select * from Student;

 use DLithe
 --Scalar Function
  --Create a table 
CREATE TABLE Employee
(
 EmpID int PRIMARY KEY,
 FirstName varchar(50) NULL,
 LastName varchar(50) NULL,
 Salary int NULL,
 Address varchar(100) NULL,
)
--Insert Data
Insert into Employee(EmpID,FirstName,LastName,Salary,Address) Values(1,'Mohan','Chauahn',22000,'Delhi');
Insert into Employee(EmpID,FirstName,LastName,Salary,Address) Values(2,'Asif','Khan',15000,'Delhi');
Insert into Employee(EmpID,FirstName,LastName,Salary,Address) Values(3,'Bhuvnesh','Shakya',19000,'Noida');
Insert into Employee(EmpID,FirstName,LastName,Salary,Address) Values(4,'Deepak','Kumar',19000,'Noida');
--See created table
Select * from Employee 

--Create function to get emp full name 
Create function fnGetEmpFullName
(
 @FirstName varchar(50),
 @LastName varchar(50)
)
returns varchar(101)
As
Begin return (Select @FirstName + ' '+ @LastName);
end 

--Create function to get emp full name 
Create function fnGetEmpFullName
(
 @FirstName varchar(50),
 @LastName varchar(50)
)
returns varchar(101)
As
Begin return (Select @FirstName + ' '+ @LastName);
end

--Calling the above created function
Select dbo.fnGetEmpFullName(FirstName,LastName) as Name, Salary from Employee 

--Inline Table-Valued Function
 --Create function to get employees
Create function fnGetEmployee()
returns Table
As
 return (Select * from Employee) 

 --Now call the above created function
Select * from fnGetEmployee() 

--Multi-Statement Table-Valued Function
--Create function for EmpID,FirstName and Salary of Employee
Create function fnGetMulEmployee()
returns @Emp Table
(
EmpID int, 
FirstName varchar(50),
Salary int
)
As
begin
 Insert into @Emp Select e.EmpID,e.FirstName,e.Salary from Employee e;
--Now update salary of first employee
 update @Emp set Salary=25000 where EmpID=1;
--It will update only in @Emp table not in Original Employee table
return
end 

 --Now call the above created function
Select * from fnGetMulEmployee() 

--Now see the original table. This is not affected by above function update command
Select * from Employee 

Create database dml;

use dml;
--Emp28 table

--CREATE COMMAND
create table Emp28
(
empid int not null,
empname varchar(50) not null,
designation varchar(50) not null,
mobile bigint not null,
constraint pk_empid primary key(empid)
);

--INSERT COMMAND
insert into Emp28 values(1,'Nevetha','Developer',9825637817);
insert into Emp28 values(2,'Naveen','Developer',9825611817);
insert into Emp28 values(3,'Riju','Designer',9825639917);
insert into Emp28 values(4,'Aakass Elango','Designer',9825237817);
insert into Emp28 values(5,'Aakash','Developer',9826737817);
insert into Emp28 values(6,'Lalith','Designer',9825633417);
insert into Emp28 values(7,'Vishal','Designer',9825787817);
insert into Emp28(empid,empname,designation,mobile) values(8,'Jancy','Developer',9825457817);
insert into Emp28(empid,empname,designation,mobile) values(9,'jancy','Developer',9825457817);

--SELECT COMMAND
        select * from Emp28 where empname='Jancy' COLLATE SQL_Latin1_General_CP1_CS_AS;-- retrieve case sensitive record
        select empname,mobile from Emp28;
        select empid as ID,empname as 'EMPLOYEE NAME' from Emp28;
       


select * from T28;


--SELECT COMMAND WITH WHERE CONDITIONS
--BETWEEN AND
--RELATIONAL AND LOGICAL
        select * from Emp28 where designation='Developer';
        select empid,empname,designation from Emp28 where empid between 3 and 7;
        select * from Emp28 where empid>=5;
        select * from Emp28 where empid>=3 and designation='Developer';
        select * from Emp28 where empid>=6 or designation='Developer';
        select * from Emp28 where not empid<=3;
        select * from Emp28 where NOT empid>=3 or designation='Developer';

--IN AND NOT IN
        select * from Emp28 where empid not in (1,3,5,7);
        select * from Emp28 where designation not in ('Developer');
        select * from T28 where designation not in ('Developer','Designer');

--TOP
        SELECT TOP 3 * FROM Emp28;
        SELECT TOP 50 percent * FROM Emp28;
        SELECT TOP 3 * FROM Emp28 where designation='Designer';

--CREATE TABLE T28
create table T28
(
empid int not null,
empname varchar(50) not null,
designation varchar(50) not null,
score int not null,
constraint pk_empid1 primary key(empid)
);

insert into T28 values(1,'Nevetha','Developer',98);
insert into T28 values(2,'Naveen','Developer',97);
insert into T28 values(3,'Riju','Designer',96);
insert into T28 values(4,'Aakass Elango','Designer',98);
insert into T28 values(5,'Aakash','Developer',97);
insert into T28 values(6,'Lalith','Designer',96);
insert into T28 values(7,'Vishal','Designer',97);
insert into T28 values(8,'No','Designer',97);

select * from T28;

--Aggregate Functions
--MIN() MAX() COUNT() AVG() SUM()
        select * from T28;
        select MIN(score)  MinScore ,max(score) as 'Min Value' from T28;
        select MAX(score) as MaxScore from T28;
        select AVG(score) as AvgScore from T28;
        select COUNT(score) as CountScore from T28;
        select SUM(score) as SumScore from T28;

--LIKE OPERATOR % and _
        SELECT * FROM T28 WHERE EMPNAME LIKE 'N%';
        SELECT * FROM T28 WHERE EMPNAME LIKE '%H';
        SELECT * FROM T28 WHERE EMPNAME LIKE '%A';
        SELECT * FROM T28 WHERE EMPNAME LIKE '%A%';
        SELECT * FROM T28 WHERE EMPNAME LIKE '_A%';
        SELECT * FROM T28 WHERE EMPNAME LIKE 'N__%'; --atleast 3 characters
        SELECT * FROM T28 WHERE EMPNAME LIKE 'N_%'; --atleast 2 characters
        SELECT * FROM T28 WHERE EMPNAME LIKE '[NLA]%';-- STARTING WITH N OR L OR A
        SELECT * FROM T28 WHERE EMPNAME NOT LIKE '[NLA]%';
        SELECT * FROM T28 WHERE EMPNAME LIKE '[A-N]%';
        SELECT * FROM T28 WHERE EMPNAME LIKE '[A-R]%';--STARTING WITH A TO R

--ORDER BY
                select * from Emp28 ORDER BY empname; --By default ASC
                select * from Emp28 ORDER BY empname desc;
                select * from Emp28 ORDER BY designation,empname;
                select * from Emp28 ORDER BY designation,empname desc;

--GROUP BY
--The GROUP BY statement is often used with aggregate functions
--(COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
        SELECT * FROM T28;
        SELECT COUNT(EMPNAME) as 'No of Employees' FROM T28
        --Step 1->aggregate function,step 2->column in the select list must be used in the group by clause
        SELECT COUNT(EMPNAME) as 'No of Employees', DESIGNATION FROM T28 GROUP BY DESIGNATION;
        SELECT AVG(SCORE) AS AVGSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION;
        SELECT MAX(SCORE) AS MAXSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION;
        SELECT MIN(SCORE) AS MINSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION;
        SELECT SUM(SCORE) AS SUMSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION;

--INSERT COMMAND
        insert into T28 values(9,'JAMES','Tester',98);
        insert into T28 values(10,'DEAN','HR',97);
        insert into T28 values(11,'SAM','HR',96);
        insert into T28 values(12,'JANCY','Tester',98);
        insert into T28 values(13,'NANCY','Developer',97);
        insert into T28 values(14,'DORA','Designer',96);
        insert into T28 values(15,'DAISY','Tester',97);
        insert into T28 values(16,'ROCKY','HR',97);

        SELECT COUNT(EMPNAME) as COUNT, DESIGNATION FROM T28 GROUP BY DESIGNATION ORDER BY DESIGNATION DESC;
        SELECT SUM(SCORE) AS SUMSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION ORDER BY SUM(SCORE) DESC;

--HAVING CLAUSE
        SELECT SUM(SCORE) AS SUMSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION WHERE SUM(SCORE)>300 ORDER BY SUM(SCORE) ;--NOT ALLOWED
        SELECT SUM(SCORE) AS SUMSCORE, DESIGNATION FROM T28 GROUP BY DESIGNATION HAVING SUM(SCORE)>300 ORDER BY SUM(SCORE) DESC ;

--DISTINCT AVOID DISPLAYING THE DUPLICATE RECORDS
        SELECT designation FROM T28;
        SELECT DISTINCT designation FROM T28;
        SELECT count(DISTINCT designation) FROM T28;
        SELECT count(designation) FROM T28;