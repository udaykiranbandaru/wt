--Query to retrieve the movie title and the corresponding director name for all movies
SELECT m.title, d.director_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id;


--Query to retrieve the movie title, release year, and the corresponding director name (if available) for all movies
SELECT m.title, m.release_year, d.director_name
FROM movies m
LEFT JOIN directors d ON m.director_id = d.director_id;


--Query to retrieve the director name and the titles of the movies they have directed (if available) for all directors
SELECT d.director_name, m.title
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id;


--Query to retrieve the movie title, release year, and the corresponding director name (if available) for all movies and directors
SELECT m.title, m.release_year, d.director_name
FROM movies m
LEFT JOIN directors d ON m.director_id = d.director_id;


--Query to retrieve the movie title and genre name for all combinations of movies and genres
SELECT m.title, g.genre_name
FROM movies m
CROSS JOIN genres g
JOIN movie_genres mg ON m.movie_id = mg.movie_id AND g.genre_id = mg.genre_id;