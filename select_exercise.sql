USE codeup_test_db;

SELECT 'The names of all the Pink Floyd albums:' AS 'Description';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Description';
SELECT release_date FROM albums WHERE name ='Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre of Nevermind' AS 'Description';
SELECT genre FROM albums WHERE name ='Nevermind';

SELECT 'Albums from the 90''s' AS 'Description';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums with less than 20 million in sales.' AS 'Description';
SELECT name FROM albums WHERE sales < 20;

SELECT 'Songs with the genre of Rock' AS 'Description';
SELECT name FROM albums WHERE genre = 'Rock';