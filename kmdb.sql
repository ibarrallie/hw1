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

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Christian",
  "Bale",
  2
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Heath",
  "Ledger",
  2
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Aaron",
  "Eckhart",
  2
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Michael",
  "Caine",
  2
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Maggie",
  "Gyllenhaal",
  2
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Christian",
  "Bale",
  3
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Gary",
  "Oldman",
  3
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Tom",
  "Hardy",
  3
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Joseph",
  "Gordon-Levitt",
  3
);

INSERT INTO actors (
  first_name,
  last_name,
  movie_id
)
VALUES (
  "Anne",
  "Hathaway",
  3
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
  7,
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
  8,
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
  9,
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
  10,
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
  11,
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
  12,
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
  13,
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
  14,
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
  15,
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
  16,
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
