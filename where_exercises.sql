#1 Create a file named where_exercises.sql. Make sure to use the employees database.

#2 Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. 
#Enter a comment with the number of records returned.

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya');
#709

#3 Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, 
#but use OR instead of IN. Enter a comment with the number of records returned. 
#Does it match number of rows from Q2?

select *
from employees
where first_name = 'Irena' 
OR first_name = 'Vidya' 
OR first_name = 'Maya';
# 709, it is the same

#4 Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', 
#using OR, and who is male. Enter a comment with the number of records returned.

select *
from employees
where (first_name = 'Irena' 
OR first_name = 'Vidya' 
OR first_name = 'Maya')
AND gender = 'M';
# 441

#5 Find all current or previous employees whose last name starts with 'E'. 
#Enter a comment with the number of employees whose last name starts with E.

select *
from employees
where last_name LIKE 'E%';
#7330

#6 Find all current or previous employees whose last name starts or ends with 'E'. 
#Enter a comment with the number of employees whose last name starts or ends with E. 
#How many employees have a last name that ends with E, but does not start with E?

select *
from employees
where last_name LIKE 'E%'
or last_name LIKE '%E';
#30723

select *
from employees
where last_name  NOT LIKE 'E%'
AND last_name LIKE '%E';
#23393

#7 Find all current or previous employees employees whose last name starts and ends with 'E'. 
#Enter a comment with the number of employees whose last name starts and ends with E. 
#How many employees'' last names end with E, regardless of whether they start with E?

select *
from employees
where last_name LIKE 'E%'
AND last_name LIKE '%E';
#899

select *
from employees
where  last_name LIKE '%E';
#24292

#8 Find all current or previous employees hired in the 90s. 
#Enter a comment with the number of employees returned.

select *
from employees
where hire_date BETWEEN '1990-01-01' AND '1999-12-31';
#135214

#9 Find all current or previous employees born on Christmas. 
#Enter a comment with the number of employees returned.

select *
from employees
where birth_date LIKE '%-12-25';
#842

#10 Find all current or previous employees hired in the 90s and born on Christmas.
# Enter a comment with the number of employees returned.

select *
from employees
where birth_date LIKE '%-12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31');
#362

#11 Find all current or previous employees with a 'q' in their last name. 
#Enter a comment with the number of records returned.

select *
from employees
where last_name LIKE '%q%';
#1873

#12 Find all current or previous employees with a 'q' in their last name but not 'qu'. 
#How many employees are found?

select *
from employees
where last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';
#547

