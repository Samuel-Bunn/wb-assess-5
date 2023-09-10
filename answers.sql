Problem 1

SELECT * FROM customers ORDER BY email

Problem 2

SELECT id FROM orders WHERE customer_id=(SELECT id  FROM customers WHERE fname='Elizabeth' AND lname='Crocker');

Problem 3

SELECT SUM (num_cupcakes) FROM orders WHERE processed ='f';

Problem 4

-- NEEDS REVISION
SELECT cupcakes.name, SUM( orders.num_cupcakes) FROM cupcakes INNER JOIN orders ON cupcakes.id = orders.cupcake_id;

Problem 5

