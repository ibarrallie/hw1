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
    last_name TEXT
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

INSERT INTO movies (
  title,
  year,
  rating,
  studio_id
)
VALUES (
  "The Dark Knight",
2008,
"PG-13",
1
);

INSERT INTO movies (
  title,
  year,
  rating,
  studio_id
)
VALUES (
  "The Dark Knight Rises",
2012,
"PG-13",
1
);

INSERT INTO studios (
  name
)
VALUES (
  "Warner Bros."
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Christian",
  "Bale"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Michael",
  "Caine"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Liam",
  "Neeson"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Katie",
  "Holmes"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Gary",
  "Oldman"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Cillian",
  "Murphy"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Heath",
  "Ledger"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Aaron",
  "Eckhart"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Maggie",
  "Gyllenhaal"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Tom",
  "Hardy"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Joseph",
  "Gordon-Levitt"
);

INSERT INTO actors (
  first_name,
  last_name
)
VALUES (
  "Anne",
  "Hathaway"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  1,
  "Bruce",
  "Wayne"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  2,
  "Alfred",
  "Pennyworth"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  3,
  "Henri",
  "Ducard"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  4,
  "Rachel",
  "Dawes"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  5,
  "James",
  "Gordon"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  1,
  6,
  "Jonathan",
  "Crane"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  2,
  1,
  "Bruce",
  "Wayne"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  2,
  7,
  "The",
  "Joker"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  2,
  8,
  "Harvey",
  "Dent"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  2,
  2,
  "Alfred",
  "Pennyworth"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  2,
  9,
  "Rachel",
  "Dawes"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  3,
  1,
  "Bruce",
  "Wayne"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  3,
  5,
  "James",
  "Gordon"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name
)
VALUES (
  3,
  10,
  "Bane"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  3,
  11,
  "John",
  "Blake"
);

INSERT INTO roles (
    movie_id,
    actor_id,
    first_name,
    last_name
)
VALUES (
  3,
  12,
  "Selena",
  "Kyle"
);

.mode column
.headers off

.print "Movies"
.print "======"
.print ""
SELECT movies.title, movies.year, movies.rating, studios.name  
FROM movies INNER JOIN studios ON studios.id = studio_id;


.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movies.title, actors.first_name, actors.last_name, roles.first_name, roles.last_name
FROM roles
INNER JOIN movies ON movie_id = movies.id
INNER JOIN actors ON actor_id = actors.id;