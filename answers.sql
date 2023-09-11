Problem 1

SELECT * 
FROM customers 
ORDER BY email

Problem 2

SELECT id 
FROM orders 
WHERE customer_id=(SELECT id  FROM customers WHERE fname='Elizabeth' AND lname='Crocker');

Problem 3

SELECT SUM (num_cupcakes) 
FROM orders 
WHERE processed ='f';

Problem 4

SELECT cupcakes.name, SUM(orders.num_cupcakes)
FROM cupcakes
INNER JOIN orders
ON cupcakes.id = orders.cupcake_id
GROUP BY cupcakes.name
ORDER BY cupcakes.name ASC;

Problem 5

SELECT customers.email, SUM(orders.num_cupcakes)
FROM customers
INNER JOIN orders
ON orders.customer_id = customers.id
GROUP BY customers.email
ORDER BY SUM(orders.num_cupcakes) DESC;

Problem 6

SELECT fname, lname, email
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
INNER JOIN cupcakes
ON orders.cupcake_id = cupcakes.id
WHERE cupcakes.id = 5 AND orders.processed = 't'
GROUP BY customers.fname, customers.lname, customers.email;