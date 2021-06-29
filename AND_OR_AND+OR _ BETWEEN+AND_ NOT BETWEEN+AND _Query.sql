# Examples using AND
Select * from employees 
where first_name='Denis' and gender= 'M';

Select * from employees
where first_name='Kellie' and gender='F';

#---------------------------------------------------------

# Example using OR
Select * from employees 
where first_name='Denis' OR first_name='Kellie';

Select * from employees 
where first_name='Aruna' OR first_name='Kellie';
#----------------------------------------------------------------------

# Example using AND + OR
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');   # paranthesis for operator precendence logic AND over OR

# Another example
Select * from employees 
where (first_name='Aruna' OR first_name='Kellie') AND gender='F'

######################################################################

# Example using BETWEEN AND
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
# Example 2- BETWEEN AND
select * from salaries where salary between '66000' and '70000';
    
# Example using NOT BETWEEN AND
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '1999-01-01';
    
# Example 2- NOT BETWEEN / AND
select * from salaries where emp_no NOT BETWEEN '10004' and '10012';


# Example 3= between / and
select * from departments where dept_no between 'd003' and 'd006';

