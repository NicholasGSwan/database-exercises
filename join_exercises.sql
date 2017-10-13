use employees;

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ',e.last_name) as 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
on dm.emp_no = e.emp_no
JOIN departments as d
on d.dept_no = dm.dept_no
where to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ',e.last_name) as 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    on dm.emp_no = e.emp_no
  JOIN departments as d
    on d.dept_no = dm.dept_no
where to_date = '9999-01-01' and e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title as Title, count(t.emp_no) as Count From employees as e
join titles as t
on t.emp_no = e.emp_no
join dept_emp as de
on de.emp_no = t.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service' and t.to_date = '9999-01-01' and de.to_date = '9999-01-01'
GROUP BY t.title

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ',e.last_name), s.salary as Salary From employees as e JOIN dept_manager as dm
    on dm.emp_no = e.emp_no
  JOIN departments as d
    on d.dept_no = dm.dept_no
  JOIN salaries as s
    on s.emp_no = dm.emp_no
where s.to_date = '9999-01-01' and dm.to_date = '9999-01-01' order by d.dept_name;

