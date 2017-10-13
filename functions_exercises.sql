USE employees;
SELECT count(*) as 'Number_of', gender
FROM employees
WHERE (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya') GROUP BY gender;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;
SELECT Concat(first_name, last_name) AS 'Full name' FROM employees WHERE last_name LIKE 'E%' and last_name LIKE '%e';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';
SELECT * From employees where birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31' AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date desc;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
SELECT DATEDIFF(CURRENT_DATE(), hire_date) AS 'How Many Days at Company' FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31' AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date desc;
SELECT count(CONCAT(e.first_name,' ', e.last_name)) AS Number_Of, CONCAT(e.first_name,' ', e.last_name) AS Full_Name FROM employees e WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%' GROUP By Full_Name ORDER BY Number_Of desc;