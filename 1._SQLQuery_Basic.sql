-- This query is first basic query in SQL using DROP, CREATE, INSERT, SELECT, UPDATE and DELETE commands

--Dropping a table if it already exists
DROP TABLE INSTRUCTOR;

-- Creating a new table
CREATE TABLE INSTRUCTOR(
	id_num INT,
	Last_Name VARCHAR(60),
	First_Name VARCHAR(60),
	City	VARCHAR(60),
	Country CHAR(3)
	);


-- Inserting rows in the table
INSERT INTO INSTRUCTOR
	(id_num, Last_name, First_name, City, Country)
	VALUES
	(1,'Patel','Deep','Houston','USA'),
	(2,'Singh','Dhoop','Mehsana','IND'),
	(3,'Lopez','Maxim','Vancouver','CAD')
;

-- Viewing the Query
SELECT * FROM INSTRUCTOR;

-- Viewing the query with USA country
SELECT * FROM INSTRUCTOR WHERE Country='USA';


-- Updating the table by changing city name
UPDATE INSTRUCTOR
	SET City='Anand'
		WHERE Last_Name='Singh'
;		
SELECT * FROM INSTRUCTOR;	


-- Deleting the specific row
DELETE INSTRUCTOR
	WHERE First_Name='Dhoop';


SELECT * FROM INSTRUCTOR;
