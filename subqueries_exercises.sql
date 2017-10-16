use employees;

SELECT concat(first_name, ' ', last_name) as 'Full Name', emp_no, hire_date FROM employees where hire_date IN (
    SELECT hire_date
    FROM employees
  where emp_no = 101010
);

SELECT t.title as Title, count(t.title) as 'Number of Aamods With Title' from titles as t where emp_no in (
  SELECT emp_no
  From employees
  where first_name = 'Aamod'
) GROUP BY t.title;

SELECT first_name, last_name FROM employees where emp_no in (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > current_date()
) and gender = 'F';