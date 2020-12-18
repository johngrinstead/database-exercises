#1 Create a new file named order_by_exercises.sql and copy in the contents of your exercise from the previous lesson.

#2 Find all employees with first names 'Irena', 'Vidya',
# or 'Maya', and order your results returned by 
#first name. In your comments, answer: 
#What was the first and last name in the first row 
#of the results? What was the first and last name of 
#the last person in the table?

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
order by first_name;
#Irena Reutenauer, Vidya Simmen

#3 Find all employees with first names 'Irena', 
#'Vidya', or 'Maya', and order your results returned 
#by first name and then last name. In your comments, 
#answer: What was the first and last name in the first
# row of the results? What was the first and last name
# of the last person in the table?

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;
#Irena Acton,  Vidya Zweizig

#4 Find all employees with first names 'Irena', 
#'Vidya', or 'Maya', and order your results returned 
#by last name and then first name. In your comments, 
#answer: What was the first and last name in the 
#first row of the results? What was the first and last 
#name of the last person in the table?

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;
#Irena Acton, Maya Zyda

#5 Write a query to to find all employees whose 
#last name starts and ends with 'E'. Sort the results 
#by their employee number. Enter a comment with the 
#number of employees returned, the first employee 
#number and their first and last name, and the last 
#employee number with their first and last name.

select *
from employees
where last_name LIKE 'E%'
AND last_name LIKE '%E'
order by emp_no;
#899, 10021 Ramzi Erde, 499648 Tadahira Erde

#6 Write a query to to find all employees whose 
#last name starts and ends with 'E'. Sort the results
# by their hire date, so that the newest employees are
# listed first. Enter a comment with the number of 
#employees returned, the name of the newest employee, 
#and the name of the oldest emmployee.

select *
from employees
where last_name LIKE 'E%'
AND last_name LIKE '%E'
order by hire_date DESC;
#899, Teiji Eldridge, Sergi Erde

#7 Find all employees hired in the 90s and born on 
#Christmas. Sort the results so that the oldest 
employee who was hired last is the first result. 
#Enter a comment with the number of employees returned,
# the name of the oldest employee who was hired last, 
#and the name of the youngest emmployee who was hired 
#first.

select *
from employees
where birth_date LIKE '%-12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
order by birth_date ASC, hire_date DESC;
#362, Khun Bernini, Douadi Pettis



