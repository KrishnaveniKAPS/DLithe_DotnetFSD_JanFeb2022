use DLithe

CREATE VIEW [DLithe] AS
SELECT empid,empname
FROM Emp28
WHERE empid = '1';

--Information Schema View
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Student';

--Catalog View
select * from sys.tables ;


--Database-scoped Dynamic Management View
These are stored in each database.*/

 --To see all SQL Server connections
SELECT connection_id,session_id,client_net_address,auth_scheme
FROM sys.dm_exec_connections ;

--When we create a view on a single table, it is called a simple view.

-- Create view on single table Student
create VIEW Student1
AS
Select *
From Student where id>1;

select * from Student1;
--Creating Index
CREATE TABLE DiffIndexTypesDemo
( ID INT IDENTITY (1,1) PRIMARY KEY,
  Name Varchar(50) CONSTRAINT UQ_Name UNIQUE,
  ADDRESS NVARCHAR(MAX)
)

--To drop that index, we should drop the constraint that created the index, using the ALTER TABLE…DROP
ALTER TABLE DiffIndexTypesDemo DROP CONSTRAINT UQ_Name
-- UNIQUE keyword in the Clustered or Non-Clustered index creation statement, as in the CREATE INDEX T-SQL
CREATE UNIQUE NONCLUSTERED INDEX IX_DiffIndexTypesDemo_Name ON DiffIndexTypesDemo (NAME)
--drop the Unique index, using the DROP INDEX T-SQL
DROP INDEX IX_DiffIndexTypesDemo_Name ON DiffIndexTypesDemo
--inserting values
INSERT INTO DiffIndexTypesDemo VALUES ('John', 'Amman'),
 ('John', 'Zarqa')

 SELECT * FROM DiffIndexTypesDemo
UPDATE DiffIndexTypesDemo SET Name='Jack' where ID=4
SELECT * FROM DiffIndexTypesDemo

--Transactions in sql
--Creating table
CREATE TABLE Person (
    PersonID int PRIMARY KEY IDENTITY(1,1),
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
	Age INT
)
 
GO
--Inserting values
INSERT INTO Person VALUES('Hayes', 'Corey','123  Wern Ddu Lane','LUSTLEIGH',23)
INSERT INTO Person VALUES('Macdonald','Charlie','23  Peachfield Road','CEFN EINION',45)
INSERT INTO Person VALUES('Frost','Emma','85  Kingsway North','HOLTON',26)
INSERT INTO Person VALUES('Thomas', 'Tom','59  Dover Road', 'WESTER GRUINARDS',51)
INSERT INTO Person VALUES('Baxter','Cameron','106  Newmarket Road','HAWTHORPE',46)
INSERT INTO Person VALUES('Townsend','Imogen ','100  Shannon Way','CHIPPENHAM',20)
INSERT INTO Person VALUES('Preston','Taylor','14  Pendwyallt Road','BURTON',19)
INSERT INTO Person VALUES('Townsend','Imogen ','100  Shannon Way','CHIPPENHAM',18)
INSERT INTO Person VALUES('Khan','Jacob','72  Ballifeary Road','BANCFFOSFELEN',11)

--Creating define an Implicit Transaction in SQL Server
SET IMPLICIT_TRANSACTIONS ON 
UPDATE 
    Person 
SET 
    Lastname = 'Sawyer', 
    Firstname = 'Tom' 
WHERE 
    PersonID = 2 
SELECT 
    IIF(@@OPTIONS & 2 = 2, 
    'Implicit Transaction Mode ON', 
    'Implicit Transaction Mode OFF'
    ) AS 'Transaction Mode' 
SELECT 
    @@TRANCOUNT AS OpenTransactions 
COMMIT TRAN 
SELECT 
    @@TRANCOUNT AS OpenTransactions


	--Creating to define an Explicit Transaction in SQL Server

	BEGIN TRANSACTION [ {transaction_name | @tran_name_variable }
    [WITH MARK ['description']]]

	BEGIN TRAN
 
UPDATE Person 
SET    Lastname = 'Lucky', 
        Firstname = 'Luke' 
WHERE  PersonID = 1
 
SELECT @@TRANCOUNT AS OpenTransactions
--open transaction
BEGIN TRAN
UPDATE Person 
SET    Lastname = 'Lucky', 
        Firstname = 'Luke' 
WHERE  PersonID = 1
SELECT @@TRANCOUNT AS OpenTransactions 
COMMIT TRAN 
SELECT @@TRANCOUNT AS OpenTransactions


BEGIN TRAN
UPDATE Person 
SET    Lastname = 'Donald', 
        Firstname = 'Duck'  WHERE PersonID=2
 
 --Rollback
SELECT * FROM Person WHERE PersonID=2
 
ROLLBACK TRAN 
 
SELECT * FROM Person WHERE PersonID=2
-- SAVE TRANSACTION
BEGIN TRANSACTION 
INSERT INTO Person 
VALUES('Mouse', 'Micky','500 South Buena Vista Street, Burbank','California',43)
SAVE TRANSACTION InsertStatement
DELETE Person WHERE PersonID=3
SELECT * FROM Person 
ROLLBACK TRANSACTION InsertStatement
COMMIT
SELECT * FROM Person