use employees;

SELECT concat(first_name, ' ', last_name) as 'Full Name', emp_no, hire_date FROM employees where hire_date IN (
    SELECT hire_date
    FROM employees
  where emp_no = 101010
);

SELECT t.title as Title, count(t.title) from titles as t where emp_no in (
  SELECT emp_no
  From employees
  where first_name = 'Aamod'
) GROUP BY t.title;