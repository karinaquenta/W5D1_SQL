--1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name 
FROM actor
WHERE last_name = 'Wahlberg';

--Answer: 2

--2. How many payments were made between $3.99 and $5.99?

SELECT count(amount)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

--Answer: 5,607

--3. What film does the store have the most of? (search in inventory)

SELECT inventory_id , film_id, count(inventory_id) 
FROM inventory 
GROUP BY inventory_id ;

--Answer: inventory_id:1,489, film_id:326 , Title: Flying Hook

--4. How many customers have the last name ‘William’?

SELECT name
FROM customer_list  
WHERE name = 'William';

--Answer: 0, no last names with 'William'

--5. What store employee (get the id) sold the most rentals?

SELECT count(staff_id), staff_id 
FROM rental
GROUP BY staff_id;

--Answer: staff_id:1 who is Mike

--6. How many different district names are there?

SELECT district
FROM address; 

--Answer: 185 districts

--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id;

--Answer:Film_ID: 508, Lambs Cincinatti

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT customer_id, store_id, last_name 
FROM customer
WHERE last_name LIKE '_%es';

--Answer: 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)

SELECT count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount > 2.50;

--Answer: 941

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT rating, count(rating)
FROM film
GROUP BY rating;

--Answer: PG-13 has 223 movies total