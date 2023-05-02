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

SELECT film_id, count(film_id)
FROM inventory 
GROUP BY film_id
ORDER BY count(film_id) DESC 

--FOUND 72 films WITH 8 copies

--Answer: inventory_id:1,489, film_id:326 , Title: Flying Hook

--4. How many customers have the last name ‘William’?

SELECT name
FROM customer_list  
WHERE name = 'William';

--Answer: 0, no last names with 'William'

--5. What store employee (get the id) sold the most rentals?

SELECT count(staff_id), staff_id 
FROM payment 
GROUP BY staff_id;

--Answer: staff_id:2 


--6. How many different district names are there? #DISTINCT returns only unique or distinct values from the specified column . It will eliminate any duplicate rows from the result set.

SELECT *
FROM address;

SELECT count(DISTINCT(district))
FROM address; 

--Answer: 378 districts

--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id;

SELECT film_id, count(actor_id)
FROM film_actor 
GROUP BY film_id 
ORDER BY count(actor_id) DESC; 

--DESC which thas the most 

--Answer:Film_ID: 508, Lambs Cincinatti

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT count(last_name)
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%es';

--Answer: 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)

SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING count(amount) > 250;

--Answer: 3

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT rating, count(rating)
FROM film
GROUP BY rating;

--Answer: 5 ratings, and PG-13 has 223 movies total