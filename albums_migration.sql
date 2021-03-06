USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(240),
  name VARCHAR(240) NOT NULL,
  release_date INT UNSIGNED,
  sales FLOAT,
  genre VARCHAR(240)
);
