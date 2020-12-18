-- MySQL provides a way to return only unique results from our queries with the keyword DISTINCT. For example, to find all the unique titles within the company, we could run the following query:

SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order.

SELECT DISTINCT last_name FROM employees
order by last_name DESC limit 10;

-- Zykh, Zyda, Zwicker, Zweizig, Zumaque, Zultner, Zucker, Zuberek, Zschoche, Zongker

-- Find all previous or current employees hired in the 90s and born on Christmas. Find the first 5 employees hired in the 90's by sorting by hire date and limiting your results to the first 5 records. Write a comment in your code that lists the five names of the employees returned.

select *
from employees
where birth_date LIKE '%-12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
order by hire_date limit 5;

-- Alslm Cappello, Utz Mandell, Bouchung Schreiter, Boacai Kushner, Petter Stroustrup

-- Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results.

-- LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?

select *
from employees
where birth_date LIKE '%-12-25'
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
order by hire_date limit 5 offset 50;

-- Offset will provide the results after a designated point specified by the limit, for example limit 10 will provide results 1-10 while limit 10 offset 10 will provide results 11-20 