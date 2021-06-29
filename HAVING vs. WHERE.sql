
/*
HAVING i slike WHERE but applied to GROUP BY block
Example
SELECT column_name(s)
FROM table_name
WHERE conditions
GROUP BY column_name(s)
HAVING conditions
ORDER BY column_name(s)
*/
# Example 1- Simple
select * from employees HAVING hire_date >= '2000-01-01';

# Exampl 2- 
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) >250
ORDER BY first_name DESC;

# Example 3
SELECT emp_no, AVG(salary) AS Average_Salary 
FROM salaries GROUP BY emp_no
HAVING AVG(salary) >120000
ORDER BY emp_no;

# Example 5- WHERE vs. HAVING
SELECT
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

# Using HAVING
SELECT
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;
#------------------------------------------------
/*
WHERE- allows us to set conditions that refer to subsets of individual rows
Example below- Extact a list of all names that are encountered lesst han 200 times . let data refer to people hired after 1st Jan 1999
*/

select first_name, count(first_name) as names_count
from employees
where hire_date > '1999-01-01'
group by first_name
having count(first_name) <200
order by first_name DESC;








