DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS roles;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year INTEGER,
  rating TEXT,
  studio_id INTEGER
);

CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    movie_id INTEGER
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    actor_id INTEGER,
    first_name TEXT,
    last_name TEXT
);

INSERT INTO movies (
  title,
  year,
  rating,
  studio_id
)
VALUES (
  "Batman Begins",
2005,
"PG-13",
1
);

INSERT INTO studios (
  name
)
VALUES (
  "Warner Bros Pictures"
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Christian",
  "Bale",
  1
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Michael",
  "Caine",
  1
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Liam",
  "Neeson",
  1
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Rachel",
  "Dawes",
  1
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Gary",
  "Oldman",
  1
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Cillian",
  "Murphy",
  1
);

