USE codeup_test_db;
select * from albums;
select "" as "All albums in the table";

UPDATE ALBUMS
SET SALES = sales*10;
select * from albums;

select * from albums where release_date < 1979;
select "" as "Albums released before 1980";
UPDATE ALBUMS
SET RELEASE_DATE = RELEASE_DATE - 100
WHERE RELEASE_DATE < 1979;
select * from albums where release_date < 1879;


select * from albums where artist="michael jackson";
select "" as "All albums from Michael Jackson";

UPDATE ALBUMS
SET ARTIST="Peter Jackson"
WHERE ARTIST="MICHAEL JACKSON";
select * from albums where artist="PETER JACKSON";
