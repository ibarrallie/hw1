DROP TABLE movies;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year TEXT,
  MPAA_rating TEXT,
  studio_id INTEGER
);