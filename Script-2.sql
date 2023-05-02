SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT first_name,last_name
FROM actor 
WHERE first_name LIKE 'Nick';

SELECT first_name,last_name
FROM actor 
WHERE first_name LIKE 'J%';

SELECT first_name,last_name
FROM actor 
WHERE first_name LIKE 'J__';

SELECT first_name,last_name
FROM actor 
WHERE first_name LIKE 'K_%th';

SELECT *
FROM payment ;

SELECT customer_id,amount
FROM payment 
WHERE amount > 2.00;

SELECT customer_id,amount
FROM payment 
WHERE amount < 7.00;

SELECT customer_id,amount
FROM payment 
WHERE amount = 7.99;

SELECT customer_id,amount
FROM payment 
WHERE amount <> 7.99;

SELECT customer_id,amount
FROM payment 
WHERE amount BETWEEN 3 AND 7;

SELECT customer_id,amount
FROM payment 
WHERE amount > 3 AND amount < 7;

SELECT customer_id,amount
FROM payment 
WHERE amount >= 3 AND amount <> 7;

--aggregators

SELECT *
FROM payment ;

SELECT SUM(amount)
FROM payment; 

SELECT AVG(amount)
FROM payment; 

SELECT COUNT(amount)
FROM payment; 

SELECT MAX(amount) AS max_payment
FROM payment; 

SELECT MIN(amount) AS min_payment
FROM payment; 

SELECT *
FROM payment ;

SELECT amount, count(amount)
FROM payment 
GROUP BY amount;

SELECT customer_id, sum(amount)
FROM payment 
GROUP BY customer_id ;

SELECT *
FROM customer ;


SELECT customer_id, count(customer_id) AS purchases
FROM payment 
GROUP BY customer_id ;

SELECT customer_id, count(customer_id)
FROM payment 
GROUP BY customer_id 
HAVING count(customer_id) > 5;