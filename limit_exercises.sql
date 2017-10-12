USE employees;
SELECT DISTINCT last_name from employees ORDER BY last_name DESC LIMIT 10;
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31' AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date desc limit 5 OFFSET 45;