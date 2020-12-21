-- In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file.

select distinct title from titles;
-- 7

-- Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY.

select last_name from employees
where last_name like 'e%e'
group by last_name;

-- Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.

select first_name, last_name from employees
where last_name like 'e%e'
group by first_name, last_name;

select last_name from employees
where last_name like '%q%' and not last_name like '%qu%'
group by last_name;
-- Chleq, Linqvist, Qiwen

-- Add a COUNT() to your results (the query above) and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

select count(last_name) from employees
where last_name like '%q%' and not last_name like '%qu%'
order by last_name;

-- Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.

select count(*)
 from employees
 where first_name IN ('Irena', 'Vidya', 'Maya')
 group by gender;

  -- Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there?
 
 select DISTINCT LOWER(
 	concat(
 	SUBSTR(first_name,1,1),
 	 SUBSTR(last_name,1,4),
   "_", 
 	 SUBSTR(birth_date, 6, 2),
 	 SUBSTR(birth_date, 3, 2))
 ) as user_name,
  first_name, last_name, birth_date, COUNT(*)
from employees
GROUP BY user_name, first_name, last_name, birth_date
order by count(*) DESC;
-- There are 6 duplicate usernames 