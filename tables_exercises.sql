show databases; 
#3 
use employees;
#4
show tables;

#5 DESCRIBE employees;

#5 int, date, varchar, enum
#6 all tables except departments
#7 all tables except salaries 
#8 all tables except departments and employees_with_departments
#9 combined employees and departments tables, removed birthday and gender 
#10
SHOW CREATE TABLE dept_manager; 
#CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1