
/*
COUNT()- counts number of non-null records in field (frequently used in combination with distint) Ex: SELECT COUNT(column_name) FROM table_name
SUM()- sums all non-null values in a column
MIN()- returns minimum value from entire list
MAX()- returns maximum value from entire list
AVG()- calculates the average of all non-null values belonging to a certain column of a table
*/

# How many employees are registered in our database?
select COUNT(emp_no) from employees;

# How many diffrent names can be found in the employees table?
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;

# How many annual contracts with a value higher than or equal to 100,000 have been registered in the salaries table?
select count(emp_no) from salaries where salary >= 100000;

# How many managers do we have in the employees database? Use star symbol (*) in your code to solve this.
select count(*) from dept_manager


