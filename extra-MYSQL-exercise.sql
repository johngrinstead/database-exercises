-- How much do the current managers of each department get paid, relative to the average salary for the department? Is there any department where the department manager gets paid less than the average salary?

use easley_1269;

create temporary table depts_avg_sal as (
	select ewd.dept_no, avg(salary) as dept_avg
	from employees.employees_with_departments as ewd
	join employees.salaries using(emp_no)
	join employees.employees using (emp_no)
	where employees.salaries.to_date > curdate()
	group by ewd.dept_no);

select *
from depts_avg_sal;

create temporary table manager_salary as (
	select dept_no, salary
	from employees.dept_manager
	join employees.salaries using(emp_no)
	where salaries.to_date > curdate()
	and dept_manager.to_date > curdate());

select *
from manager_salary;

create temporary table manager_vs_dept as (
	select *
	from depts_avg_sal
	join manager_salary using (dept_no));

select *
from manager_vs_dept;

-- What languages are spoken in Santa Monica?

select *
from city
join countrylanguage using (CountryCode)
where Name = 'Santa Monica';

-- How many different countries are in each region?

select region, count(*)
from country
group by region;

-- What is the population for each region?

select region, sum(Population)
from country
group by region;

-- What is the population for each continent?

select continent, sum(Population)
from country
group by continent;

-- What is the average life expectancy globally?

select avg(lifeexpectancy)
from country;

-- What is the average life expectancy for each region, each continent? Sort the results from shortest to longest

select region, avg(lifeexpectancy)
from country
group by region
order by avg(lifeexpectancy);

select continent, avg(lifeexpectancy)
from country
group by continent
order by avg(lifeexpectancy);