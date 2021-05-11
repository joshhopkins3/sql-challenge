*List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM employees as E
LEFT JOIN salaries as S ON
E.emp_no=S.emp_no
ORDER BY emp_no


*List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT (year FROM (hire_date)) = 1986;


*List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT D.dept_no, D.dept_name, DM.emp_no, E.last_name, E.first_name
FROM departments as D
LEFT JOIN dept_manager as DM ON
D.dept_no=DM.dept_no
LEFT JOIN employees as E ON
E.emp_no=DM.emp_no;


*List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM departments as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
ORDER BY DE.emp_no;


*List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name like 'B%';


*List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM departments as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
WHERE D.dept_name = 'Sales';


*List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT D.dept_name, DE.emp_no, E.last_name, E.first_name
FROM departments as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development'
ORDER BY dept_name;


*In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;