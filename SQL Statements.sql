-- Q1

SELECT
emp.emp_no,
emp.first_name,
emp.last_name,
emp.sex,
sal.salary
FROM
employees emp
JOIN
salaries sal
ON
emp.emp_no = sal.emp_no;

-- Q2

SELECT
emp.first_name,
emp.last_name,
emp.hire_date
FROM
employees emp
WHERE emp.hire_date >= '1/1/1986' and emp.hire_date <= '12/31/1986'
ORDER BY emp.hire_date;

--Q3

SELECT
depman.dept_no "Department Number",
dept.dept_name "Department Name",
depman.emp_no "Manager Employee Number",
emp.last_name "Manager Last Name",
emp.first_name "Manager First Name"
FROM
dept_manager depman
JOIN
departments dept
ON
dept.dept_no = depman.dept_no
JOIN
employees emp
ON
emp.emp_no = depman.emp_no

--Q4

SELECT
emp.emp_no,
emp.last_name,
emp.first_name,
deps.dept_name
FROM
employees emp
JOIN
dept_emp depemp
ON
emp.emp_no = depemp.emp_no
JOIN
departments deps
ON
depemp.dept_no = deps.dept_no

--Q5

SELECT
emp.first_name,
emp.last_name,
emp.sex
FROM
employees emp
WHERE
emp.first_name = 'Hercules' and
emp.last_name LIKE 'B%'

--Q6
SELECT
emp.emp_no,
emp.last_name,
emp.first_name,
depart.dept_name
FROM
employees emp
JOIN
dept_emp depemp
ON
emp.emp_no = depemp.emp_no
JOIN
departments depart
ON
depart.dept_no = depemp.dept_no
WHERE
depart.dept_name = 'Sales'

--Q7
SELECT
emp.emp_no,
emp.last_name,
emp.first_name,
depart.dept_name
FROM
employees emp
JOIN
dept_emp depemp
ON
emp.emp_no = depemp.emp_no
JOIN
departments depart
ON
depart.dept_no = depemp.dept_no
WHERE
depart.dept_name IN ('Sales','Development')

--Q8
SELECT
emp.last_name,
count(emp.last_name)
FROM
employees emp
GROUP BY
emp.last_name
ORDER BY count(emp.last_name) DESC