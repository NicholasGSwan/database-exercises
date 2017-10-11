USE codeup_test_db;

SELECT 'All Albums' AS '';

SELECT * FROM albums;

SELECT 'All albums released before 1980' AS '';

SELECT * From albums WHERE release_date <1980;

SELECT 'All albums from Michael Jackson' AS '';

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales*10;

SELECT * FROM albums;

UPDATE albums
SET release_date = release_date-100
where release_date < 1980;

SELECT * FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist ='Michael Jackson';

SELECT * FROM albums;
