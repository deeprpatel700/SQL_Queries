
# Selecting only first and last name from employees table
SELECT 
    first_name, last_name
FROM
    employees;
    
# Selecting everything from employees table
SELECT 
    *
FROM
    employees;
#--------------------------------------------------------------
# Selecting dept_no from departments table
SELECT dept_no FROM departments;
# Selecting everything from departments table
SELECT * FROM departments;
#-------------------------------------------------------------
# Examples using Select, From, Where
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';

select * from employees where first_name='Elvis';

