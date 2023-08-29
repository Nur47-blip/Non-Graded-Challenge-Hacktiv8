CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	customer_name VARCHAR,
	city VARCHAR
);

CREATE TABLE orders (
	order_id serial PRIMARY KEY,
	customer_id INT,
	order_date date,
	total_amount float,
	FOREIGN KEY (customer_id)
		REFERENCES customer (customer_id)
);

INSERT INTO customer (customer_name, city)
VALUES 
	('John Doe', 'New York'),
	('Jane Smith', 'Los Angeles'),
	('David Johnson', 'Chicago');
	
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
	(1, '2022-01-10', 100.00),
	(1, '2022-02-15', 150.00),
	(2, '2022-03-20', 200.00),
	(3, '2022-04-25', 50.00);

SELECT
	customer_id,
	COUNT(customer_id)
FROM
	orders
GROUP BY
	customer_id
ORDER BY
	customer_id ASC

	

