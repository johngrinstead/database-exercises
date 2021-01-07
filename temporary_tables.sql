use easley_1269;

-- Using the example from the lesson, re-create the employees_with_departments table.

select *
from exercise_table;

create temporary table exercise_table as(
	select *
	from employees.employees_with_departments
);

-- A. Add a column named full_name to this table. It should be a VARCHAR whose length is the sum of the lengths of the first name and last name columns

alter table exercise_table
add full_name varchar(100);

-- B. Update the table so that full name column contains the correct data

update exercise_table
set full_name = concat(first_name, ' ', last_name);

-- C. Remove the first_name and last_name columns from the table.

alter table exercise_table
drop column first_name;

alter table exercise_table
drop column last_name;

-- D. What is another way you could have ended up with this same table?

select emp_no, dept_no, dept_name, concat(first_name, ' ', last_name)
from employees.employees_with_departments;


-- Create a temporary table based on the payment table from the sakila database.

select *
from sakila.payment;

create temporary table exercise_table_2 as (
	select *
	from sakila.payment

);

-- Write the SQL necessary to transform the amount column such that it is stored as an integer representing the number of cents of the payment. For example, 1.99 should become 199.

alter table exercise_table_2
add amount_in_cents INT UNSIGNED;

update exercise_table_2
set amount_in_cents = amount * 100;

alter table exercise_table_2
modify amount int;

update exercise_table_2
set amount = amount_in_cents;

-- Find out how the current average pay in each department compares to the overall, historical average pay. In order to make the comparison easier, you should use the Z-score for salaries. In terms of salary, what is the best department right now to work for? The worst?

select *
from employees.employees_with_departments
join employees.salaries using (emp_no);

select *
from exercise_table_3;

create temporary table exercise_table_3 as (
	select *
	from employees.employees_with_departments
	join employees.salaries using (emp_no)
);

select avg(salary)
from exercise_table_3
where dept_no = 'd001';

-- 71913.20, D1, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd001'
and to_date > curdate();

-- 80014.68, D1, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd002';

-- 70489.36, D2, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd002'
and to_date > curdate();

-- 78644.91, D2, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd003';

-- 55574.87, D3, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd003'
and to_date > curdate();

-- 63795.02, D3, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd004';

-- 59605.48, D4, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd004'
and to_date > curdate();

-- 67841.95, D4, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd005';

-- 59478.90, D5, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd005'
and to_date > curdate();

-- 67665.62, D5, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd006';

-- 57251.27, D6, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd006'
and to_date > curdate();

-- 65382.06, D6, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd007';

-- 80667.61, D7, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd007'
and to_date > curdate();

-- 88842.16, D7, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd008';

-- 59665.18, D8, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd008'
and to_date > curdate();

-- 67932.71, D8, Current

select avg(salary)
from exercise_table_3
where dept_no = 'd009';

-- 58770.37, D9, Historic

select avg(salary)
from exercise_table_3
where dept_no = 'd009'
and to_date > curdate();

-- 66971.35, D9, Current