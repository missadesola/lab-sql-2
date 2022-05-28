-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM actor 
WHERE last_name = 'JOHANSSON';

-- How many films (movies) are available for rent?
SELECT COUNT(film_id)
FROM inventory;

-- How many films have been rented?
SELECT COUNT(rental_id)
FROM rental;

-- What is the shortest and longest rental period?
SELECT MIN(rental_duration) AS shortest_date,
MAX(rental_duration) AS longest_date
FROM film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(length) AS min_duration,
MAX(length) AS max_duration
FROM film;

-- What's the average movie duration?
SELECT AVG(length)
FROM film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(length), SEC_TO_TIME(ROUND(AVG(length)*60, 0)) AS formatted_length
FROM film;

-- How many movies longer than 3 hours?
SELECT COUNT(film_id)
FROM film
WHERE SEC_TO_TIME(ROUND((length)*60, 0)) > 3;

-- Get the name and email formatted.
SELECT CONCAT(first_name, ' ', last_name, ' - ', email)
FROM customer;

-- What's the length of the longest film title?
SELECT max(char_length(title))
FROM film;