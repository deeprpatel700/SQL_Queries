
/*
GROUP BY- must be placed immediately after the WHERE conditions if any, and just before the ORDER BY clause
Ex:
SELECT column_name(s)
FROM table_name
WHERE conditions
GROUP BY column_name(s)
ORDER BY column_name(s)
*/

#Below 2 queries will result in same output
# Query 1
Select first_name from employees
group by first_name;

# Query 2
Select distinct first_name from employees;

# Query 3 - Count distinct first_names using GROUP BY
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name;


# Query 4- Adding ORDER BY
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

#-------------------------------------------
# Query 5- Using Aliases (AS)
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

#---------------------------------------------
/*Query 6- 
Write a query that obtains an output whose first column must contain annual salaries higher than 80,000 dollars. 
The second column, renamed to “emps_with_same_salary”, must show the number of employee contracts signed with this salary.
*/
SELECT salary, COUNT(salary) AS emps_with_same_salary
FROM salaries WHERE salary > 80000 
GROUP BY salary;

