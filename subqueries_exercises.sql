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

SELECT dept_name from departments where dept_no in (
  SELECT dept_no
  FROM dept_manager
  where to_date>current_date() and emp_no IN (
    SELECT emp_no
    from employees
    where gender = 'f'
  )
)