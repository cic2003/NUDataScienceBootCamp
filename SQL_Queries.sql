SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, employees.hire_date, salaries.salary
FROM salaries
INNER JOIN employees ON salaries.emp_no=employees.emp_no;

SELECT employees.last_name, employees.first_name, employees.gender, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT departments.dept_no, departments.dept_name,  dept_manager.emp_no, employees.last_name, employees.first_name, salaries.from_date, salaries.to_date
FROM (((dept_manager
	   INNER JOIN departments ON dept_manager.dept_no=departments.dept_no
	   INNER JOIN employees ON dept_manager.emp_no=employees.emp_no
	   INNER JOIN salaries ON dept_manager.emp_no=salaries.emp_no)))
	   ;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM ((dept_emp
	   INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
	   INNER JOIN employees ON dept_emp.emp_no=employees.emp_no))
	  ;

SELECT * FROM employees
	WHERE first_name='Hercules' AND last_name like 'B%'
	;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM ((dept_emp
	INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
	INNER JOIN employees ON dept_emp.emp_no=employees.emp_no))
	WHERE dept_name='Sales'
	;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM ((dept_emp
	INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
	INNER JOIN employees ON dept_emp.emp_no=employees.emp_no))
	WHERE dept_name='Sales' OR dept_name='Development'
	;

SELECT COUNT(last_name)
	FROM employees
	GROUP BY last_name
	;
	
SELECT *
	FROM employees
	WHERE emp_no='499942'
	;