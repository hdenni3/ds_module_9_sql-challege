CREATE TABLE departments (
	dept_no VARCHAR(5) Not Null,
	dept_name VARCHAR(50) Not Null,
	primary key (dept_no)
);

drop table departments;

SELECT * FROM departments;

CREATE TABLE titles (
	title_id VARCHAR(5) Not Null,
	title VARCHAR(50) Not Null,
	primary key (title_id)
);

drop table titles;

SELECT * FROM titles;

CREATE TABLE employees (
	emp_no INTEGER Not Null,
	emp_title_id VARCHAR(5) Not Null,
	birth_date date Not Null,
	first_name VARCHAR(150) Not Null,
	last_name VARCHAR(200) Not Null,
	sex VARCHAR(5) Not Null,
	hire_date date Not Null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

drop table employees;

SELECT * FROM employees;

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) Not Null,
	emp_no INTEGER Not Null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no INTEGER Not Null,
	dept_no VARCHAR(5) Not Null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE salaries (
	emp_no INTEGER Not Null,
	salary float Not Null,
	primary key (emp_no, salary),
	foreign key (emp_no) references employees (emp_no)
);

SELECT * FROM salaries;


