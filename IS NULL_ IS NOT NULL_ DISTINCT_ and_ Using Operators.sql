# Retreving rows with no first names
select * from employees where first_name IS NULL;

# Retreiving rows with names of all departments whose dept no is not null
select * from departments where dept_no IS NOT NULL;

# Retreiving employees for hire_date on or after 2000
select * from employees where hire_date >= '2000-01-01';

# Retrieving female employees hired on or after 2000
select * from employees where hire_date >= '2000-01-01' AND gender='F';

# Retrieving employees with salaries higher than 150K
select * from salaries where salary > '150000';

# Select Distinct values 
select distinct gender from employees;

# Distinct hire dates
select distinct hire_date from employees LIMIT 1000