--Once you have a complete database, do the following:

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees JOIN salaries
on employees.emp_no = salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT employees.emp_no, last_name, first_name, departments.dept_no, dept_name
FROM employees JOIN dept_mgr
on employees.emp_no = dept_mgr.emp_no
JOIN departments
on departments.dept_no = dept_mgr.dept_no

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp
on employees.emp_no = dept_emp.emp_no
JOIN departments
on departments.dept_no = dept_emp.dept_no

--5. List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp
on employees.emp_no = dept_emp.emp_no
JOIN departments
on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp
on employees.emp_no = dept_emp.emp_no
JOIN departments
on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT last_name, COUNT (last_name)
FROM employees
Group BY last_name ORDER BY COUNT (last_name) DESC

