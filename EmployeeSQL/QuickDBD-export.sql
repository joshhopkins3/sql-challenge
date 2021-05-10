-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


DROP TABLE employees;
	
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,  
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

DROP TABLE departments;

CREATE TABLE departments (
    dept_no varchar   NOT NULL PRIMARY KEY,
    dept_name varchar   NOT NULL
);

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no varchar   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
    emp_no INT   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

DROP TABLE salaries;

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE titles;

CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL
);

SELECT *
FROM employees

SELECT *
FROM departments

SELECT *
FROM dept_emp

SELECT *
FROM dept_manager

SELECT *
FROM salaries

SELECT *
FROM titles