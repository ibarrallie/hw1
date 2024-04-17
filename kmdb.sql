DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year TEXT,
  MPAA_rating TEXT,
  studio_id INTEGER
);

CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

