USE codeup_test_db;
INSERT INTO albums(artist, name, release_date, sales)
values("Michael Jackson", "Thriller", 1982, 47.3);

INSERT INTO albums(artist, name, release_date, sales, genre)
values ("Eagles", "Their Greatest Hits", 1976, 41.2, "Pop"),
("AC/DC", "Back in Black", 1980, 26.1, "Country Rock"),
("Pink Floyd", "The Dark Side of the Moon", 1973, 24.2, "Hard Rock"),
("Meat Loaf", "Bat Out of Hell", 1977, 21.5, "Progressive Rock"),
("Whitney Houston", "The Bodyguard", 1992, 28.4, "R&B"),
("Eagles", "Hotel California", 1976, 31.5, "Soft Rock"),
("Bee Gees", "Saturday Night Fever", 1977, 21.6, "Disco"),
("Fleetwood Mac", "Rumours", 1977, 27.9, "Soft Rock"),
("Various Artists", "Grease: The Original Soundtrack from the Motion Picture", 1978, 14.4, "Rock and Roll"),
("Led Zeppelin", "Led Zeppelin IV", 1971, 29.0, "Hard Rock"),
("Michael Jackson", "Bad", 1987, 19.3, "Pop"),
("Alanis Morissette", "Jagged Little Pill", 1995, 24.4, "Alternative Rock"),
("Shania Twain", "Come On Over", 1995, 29.6, "Country"),
("Celine Dion", "Falling into You", 1967, 20.2, "Pop"),
("The Beatles", "Sgt. Pepper's Lonely Hearts Club Band", 1967, 18.2, "Rock"),
("Various Artists", "Dirty Dancing", 1967, 17.9, "Pop"),
("Michael Jackson", "Dangerous", 1991, 17.3, "Rock"),
("Adele", "21", 2011, 25.3, "Soul"),
("Celine Dion", "Let's Talk About Love", 1997, 19.3, "Pop"),
("The Beatles", "1", 2000, 23.4, "Rock"),
("ABBA", "Gold: Greatest Hits", 1992, 22.7, "Disco"),
("Madonna", "The Immaculate Collection", 1990, 19.4, "Pop"),
("The Beatles", "Abbey Road", 1969, 14.4, "Rock"),
("Bruce Springsteen", "Born in the U.S.A.", 1984, 19.6, "Heartland Rock"),
("Dire Straits", "Brothers in Arms", 1984, 17.7, "Roots Rock"),
("James Horner", "Titanic: Music from the Motion Picture", 1997, 18.1, "Film Score"),
("Metallica", "Metallica", 1991, 21.2, "Heavy Metal"),
("Nirvana", "Nevermind", 1991, 16.7, "Grunge"),
("Pink Floyd", "The Wall", 1979, 18.6, "Progressive Rock"),
("Santana", "Supernatural", 1999, 20.5, "Latin Rock"),
("Guns N' Roses", "Appetite for Destruction", 1987, 21.6, "Hard Rock");

select "" as "The name of all albums by Pink Floyd";
SELECT * FROM albums WHERE artist="Pink Floyd";
select "" as "The year Sgt. Pepper's Lonely Hearts Club Band was released";
SELECT RELEASE_DATE FROM ALBUMS WHERE NAME="SGT. PEPPER'S LONELY HEARTS CLUB BAND";
select "" AS "The genre for Nevermind";
SELECT GENRE FROM ALBUMS WHERE NAME="NEVERMIND";
select "" AS "Which albums were released in the 1990s";
SELECT * FROM ALBUMS WHERE RELEASE_DATE BETWEEN 1990 AND 1999;
select "" AS "Which albums had less than 20 million certified sales";
SELECT * FROM ALBUMS WHERE SALES < 20.0;
select "" AS "All the albums with a genre of 'Rock'";
SELECT * FROM ALBUMS WHERE GENRE="ROCK";