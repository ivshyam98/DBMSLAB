--all examples are of w3schools.com

SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index


SELECT * FROM table_name;

SELECT column1, column2, ... FROM table_name;

SELECT DISTINCT column1, column2, ... FROM table_name;

SELECT DISTINCT Country FROM Customers;

SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT Count(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers);

SELECT column1, column2, ... FROM table_name WHERE condition;

SELECT column1, column2, ... FROM table_name WHERE condition1 OR condition2 OR condition3 ...;

Eg. SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customers WHERE City='Berlin' OR City='München';
SELECT * FROM Customers WHERE NOT Country='Germany';
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');

--The ORDER BY keyword sorts the records in ascending order by default
SELECT column1, column2, ... FROM table_name ORDER BY column1, column2, ... ASC|DESC;

SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

Eg. SELECT * FROM Customers ORDER BY Country;

INSERT INTO table_name VALUES (value1, value2, value3, ...);

SELECT column_names FROM table_name WHERE column_name IS NULL;

SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL;

UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition

Eg UPDATE Customers SET ContactName='Juan' WHERE Country='Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:

DELETE FROM table_name;

-- select limited records 
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

-- Returns the minimum and the maximum from that list

SELECT MIN(column_name) FROM table_name WHERE condition;

SELECT MAX(column_name) FROM table_name WHERE condition;

SELECT MIN(Price) AS SmallestPrice FROM Products;

SELECT COUNT(column_name)
FROM table_name
WHERE condition;

SELECT AVG(column_name)
FROM table_name
WHERE condition;

SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- ( % - The percent sign represents zero, one, or multiple characters )
-- ( _ - The underscore represents a single character )

Eg. SELECT * FROM Customers WHERE CustomerName LIKE '%a';

Eg. SELECT * FROM Customers WHERE CustomerName LIKE 'a_%_%';

-- selects all customers with a City starting with "b", "s", or "p"

SELECT * FROM Customers WHERE City LIKE '[bsp]%';

-- selects all customers with a City starting with "a", "b", or "c"
SELECT * FROM Customers WHERE City LIKE '[a-c]%';

-- select all customers with a City NOT starting with "b", "s", or "p":
SELECT * FROM Customers WHERE City LIKE '[!bsp]%';

SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers WHERE Country NOT IN ('Germany', 'France', 'UK');


-- starting and ending values are inclusive
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;

Eg. SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

CREATE DATABASE databasename;

DROP DATABASE databasename;

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

Eg. CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);

-- A copy of an existing table can also be created using CREATE TABLE.
-- The new table gets the same column definitions. All columns or specific columns can be selected.

CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

DROP TABLE table_name;

-- The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

TRUNCATE TABLE table_name;

-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table

ALTER TABLE table_name DROP COLUMN column_name;

ALTER TABLE table_name DROP COLUMN column_name;

-- SQL constraints are used to specify rules for data in a table

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);

-- not null constraint 
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- unique constraint

CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- primary key constraint
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);