use codeup_test_db;
-- albums released after 1991
-- select 'Albums released after 1992' as 'caption';
delete from albums
where release_date > 1992;

select 'Albums with genre of disco' as 'caption';
delete from albums
where genre='disco';

select 'Albums by Whitney Houston' as 'caption';
delete from albums
where artist = 'Whitney Houston';