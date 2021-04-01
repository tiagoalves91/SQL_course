CREATE TABLE customers 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name  VARCHAR(100),
    email      VARCHAR(100)
    
);

CREATE TABLE orders 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
); 


SELECT * FROM orders WHERE customer_id = 1;


SELECT * FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;

SELECT * FROM orders WHERE customer_id = 
    (
        SELECT id FROM customers 
        WHERE last_name = 'George'
    );

//implicity inner JOIN

SELECT first_name, last_name, order_date, amount 
FROM customers, orders 
    WHERE customers.id = orders.customer_id;
    

EXPLICIT INNER JOIN

SELECT customer_id,first_name, last_name, order_date, SUM(amount) AS 'total_spend' 
    FROM customers
    JOIN orders
        ON customers.id = orders.customer_id
        GROUP BY orders.customer_id
        ORDER BY 'total_spend' DESC;
   
   
 //LEFT JOIN 
     
SELECT  first_name,
        last_name,
        IFNULL(SUM(amount),0) AS 'total'
FROM customers 
LEFT JOIN orders
      ON customers.id = orders.customer_id
        GROUP BY orders.customer_id
        ORDER BY total;
        
   // RIGHT JOIN
   
SELECT  first_name,
        last_name,
        IFNULL(SUM(amount),0) AS 'total'
FROM customers 
RIGHT JOIN orders
      ON customers.id = orders.customer_id
        GROUP BY orders.customer_id
        ORDER BY total;
   


