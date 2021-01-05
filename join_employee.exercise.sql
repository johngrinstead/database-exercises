-- Use the employees database.

use employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

select dept_name as department_name, concat(first_name, " ", last_name) as department_manager
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no 
where to_date > curdate();

-- Find the name of all departments currently managed by women.

select dept_name as department_name, concat(first_name, " ", last_name) as department_manager
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no 
where to_date > curdate()
and gender = "F";

-- Find the current titles of employees currently working in the Customer Service department.

select title, count(*)
from employees_with_departments
join titles on employees_with_departments.emp_no = titles.emp_no
where titles.to_date > curdate()
group by title;


-- Find the current salary of all current managers.

select dept_name as department_name, concat(first_name, " ", last_name) as department_manager, salary
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no 
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date > curdate()
and salaries.to_date > curdate();

-- Find the number of current employees in each department.

select departments.dept_no, dept_name, count(*)
from departments
join dept_emp on departments.dept_no = dept_emp.dept_no
where to_date > curdate()
group by departments.dept_no;

-- Which department has the highest average salary? Hint: Use current not historic information.

select departments.dept_name, avg(salary)
from departments
join dept_emp on departments.dept_no = dept_emp.dept_no
join salaries on dept_emp.emp_no = salaries.emp_no
where dept_emp.to_date > curdate()
and salaries.to_date > curdate()
group by departments.dept_name desc
limit 1;

-- Who is the highest paid employee in the Marketing department?

select first_name, last_name, salaries.salary
from employees_with_departments
join salaries on employees_with_departments.emp_no = salaries.emp_no
where dept_name = "Marketing"
and salaries.to_date > curdate()
order by salaries.salary desc
limit 1;

-- Which current department manager has the highest salary?

select dept_name as department_name, concat(first_name, " ", last_name) as department_manager, salary
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no 
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date > curdate()
and salaries.to_date > curdate()
order by salary desc
limit 1;

