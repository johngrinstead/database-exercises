-- Copy the order by exercise and save it as functions_exercises.sql.

-- Write a query to to find all current employees whose last name starts and ends with 'E'. Use concat() to combine their first and last name together as a single column named full_name.

select concat (first_name, " ", last_name) as full_name
from employees
where last_name LIKE 'E%'
AND last_name LIKE '%E';

-- Convert the names produced in your last query to all uppercase.

select upper(concat(first_name, " ", last_name)) as full_name
from employees
where last_name LIKE 'E%'
AND last_name LIKE '%E';

-- Find all previous employees hired in the 90s and born on Christmas. Use datediff() function to find how many days they have been working at the company (Hint: You will also need to use NOW() or CURDATE()),

select datediff(CURDATE(), hire_date) as days_working_for_company
from employees
where birth_date LIKE '%-12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31');

-- Find the smallest and largest current salary from the salaries table.

select min(salary) from salaries;
-- 38623

select max(salary) from salaries;
-- 158220

-- Use your knowledge of built in SQL functions to generate a username for all of the current and previous employees. A username should be all lowercase, and consist of the first character of the employees first name, the first 4 characters of the employees last name, an underscore, the month the employee was born, and the last two digits of the year that they were born.

select LOWER(concat(SUBSTR(first_name,1,1), SUBSTR(last_name,1,4), "_", SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2))) as user_name
from employees;