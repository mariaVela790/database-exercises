USE codeup_test_db;
--select "Hello World";

select "" as "The name of all albums by Pink Floyd";
SELECT name FROM albums WHERE artist="Pink Floyd";

select "" as "The year Sgt. Peppers Lonely Hearts Club Band was released";
SELECT RELEASE_DATE FROM ALBUMS WHERE NAME="SGT. PEPPERS LONELY HEARTS CLUB BAND";

select "" AS "The genre for Nevermind";
SELECT GENRE FROM ALBUMS WHERE NAME="NEVERMIND";

select "" AS "Which albums were released in the 1990s";
SELECT * FROM ALBUMS WHERE RELEASE_DATE BETWEEN 1990 AND 1999;

select "" AS "Which albums had less than 20 million certified sales";
SELECT * FROM ALBUMS WHERE SALES < 20;

select "" AS "All the albums with a genre of 'Rock'";
SELECT * FROM ALBUMS WHERE GENRE like 'rock';