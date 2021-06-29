
# Using order by to sort the data- ascending by default
select * from employees 
order by first_name ASC;

# by descending- Example1
select * from employees 
order by first_name DESC;

#Example2
select * from employees 
order by emp_no DESC;

#Example3- Multi-sort
select * from employees 
order by first_name, last_name ASC;


# Example4
select * from employees 
order by hire_date DESC;

