SHOW tables;
DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;
SELECT * FROM countrylanguage WHERE CountryCode ='USA';
SELECT * FROM countrylanguage WHERE city = 'Santa Monica';
SELECT Region, COUNT(Name)num_countries FROM country GROUP BY Region ORDER BY num_countries;
select unix_timestamp()/31536000