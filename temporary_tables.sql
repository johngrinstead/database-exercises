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

