-- Find all the current employees with the same hire date as employee 101010 using a sub-query.

select *
from employees
join dept_emp using(emp_no)
where hire_date in(
	select hire_date
	from employees
	where emp_no = 101010
)
and dept_emp.to_date > curdate();

-- Find all the titles ever held by all current employees with the first name Aamod.

select title
from titles
join employees using (emp_no)
where emp_no in(
	select emp_no
	from employees
	where first_name = 'Aamod'
	and to_date > curdate()
)
group by title;

-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.

select * 
from employees
join dept_emp using (emp_no)
where dept_emp.to_date < curdate()
order by emp_no;

-- 91479 employees no longer with the company

-- Find all the current department managers that are female. List their names in a comment in your code.

select *
from dept_manager
where emp_no in (
	select emp_no
	from employees
	where gender = 'F'
)
and to_date > curdate();

-- Currently 4 deparment mangers are female

-- Find all the employees who currently have a higher salary than the companies overall, historical average salary.

select *
from salaries
where salary > (
	select avg(salary)
	from salaries
)
and to_date > curdate()
order by salary;

select avg(salary) -- used to find avg salary 
from salaries;



-- BONUS!!!!!!!!!!!!!!!!



-- Find all the department names that currently have female managers.

select *
from departments
where dept_no in (
	select dept_no
	from dept_manager
	where emp_no in (
		select emp_no
		from employees
		where gender = 'F'
	)
	and to_date > curdate()
);