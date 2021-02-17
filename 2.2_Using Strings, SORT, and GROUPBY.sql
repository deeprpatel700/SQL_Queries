-- This queries can only be ran after creating tables in 2.1 and then table files can be found in files folder

SELECT * FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM JOBS;
SELECT * FROM JOB_HISTORY;
SELECT * FROM LOCATIONS;

-- Query 1: Retrieving Employees by Address
SELECT * FROM EMPLOYEES
	WHERE ADDRESS LIKE '%Elgin%'
;

-- Query 2: Retrieving Employees by Birth Date
SELECT * FROM EMPLOYEES
	WHERE B_DATE LIKE '197%';
;

-- Query 3: Retrieving Employees by Department and Salary
SELECT * FROM EMPLOYEES
	WHERE DEP_ID=5 AND SALARY BETWEEN 60000 AND 70000
;
	
-- Query 4A: Retrieving Employees by Sorted Department ID
SELECT * FROM EMPLOYEES
	ORDER BY DEP_ID
; 

-- Query 4B: Retrieving Employees by Sorted Department ID descending and then by Last Name descending
SELECT * FROM EMPLOYEES
	ORDER BY DEP_ID DESC, L_NAME DESC
;

-- Query 5A:  Counting Number of Employees in each department
SELECT DEP_ID, COUNT(DEP_ID)
	AS COUNT FROM EMPLOYEES GROUP BY DEP_ID
;

-- Query 5B:  Counting Number of Employess plus Average Salary in each department
SELECT DEP_ID, COUNT(*), AVG(SALARY)
	FROM EMPLOYEES
	GROUP BY DEP_ID
;

-- Query 5C: Counting Number of Employees, Average Salary in each department, filtering, and order
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
	FROM EMPLOYEES
	GROUP BY DEP_ID
	HAVING COUNT(*) < 4
	ORDER BY AVG_SALARY
;

-- Query 6: Using Multiple tables to Retrieve Data and Generate Query
SELECT DEPARTMENTS.DEP_NAME, EMPLOYEES.F_NAME, EMPLOYEES.L_NAME
	FROM EMPLOYEES, DEPARTMENTS
	WHERE EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP
	ORDER BY DEPARTMENTS.DEP_NAME, EMPLOYEES.L_NAME DESC