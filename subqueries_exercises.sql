use employees;

SELECT concat(first_name, ' ', last_name) as 'Full Name', emp_no, hire_date FROM employees where hire_date IN (
    SELECT hire_date
    FROM employees
  where emp_no = 101010
)