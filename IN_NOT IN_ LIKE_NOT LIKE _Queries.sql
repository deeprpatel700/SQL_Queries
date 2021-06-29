
# Using IN - Example 1
Select * from employees 
where first_name IN ('Cathie','Mark','Nathan');

# Using IN- Example 2
Select * from employees 
where first_name IN ('Denis','Elvis');


# Using NOT IN
Select * from employees 
where first_name NOT IN ('Cathie','Mark','Nathan');

# Using NOT IN
Select * from employees 
where first_name NOT IN ('John','Mark','Jacob');

/*
%- a substitute for a sequence of characters
_- helps you match a single character
*/

# Using LIKE to filter first_name starting with Mar
Select * from employees where first_name LIKE('Mar%');

# Using LIKE to filter first_name which has 'ar' in between
Select * from employees where first_name LIKE('%ar%');

# Using LIKE to filter first_name with four characters starting with Mar
Select * from employees where first_name LIKE('Mar_');

# Using NOT LIKE to filter first_name with four characters starting with Mar
Select * from employees where first_name NOT LIKE('%Mar%');

#----------------------------------------------------------------------
# More Examples using LIKE
Select * from employees where first_name LIKE('Mark%');
Select * from employees where hire_date LIKE ('2000%');
Select * from employees where emp_no LIKE ('1000_');
select * from employees where first_name LIKE ('%Jack%');
select * from employees where first_name NOT LIKE ('%Jack%');

#Combining queries
Select * from employees where first_name LIKE('Mar%') and hire_date LIKE('2000%');
Select * from employees where emp_no LIKE ('4_____') and hire_date LIKE('2000%') and gender='M';

#########################################

