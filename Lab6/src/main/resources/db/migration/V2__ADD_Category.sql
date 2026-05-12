CREATE TABLE IF NOT EXISTS Category(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(100) UNIQUE
);

INSERT INTO Category(category_name)
SELECT DISTINCT category
FROM Product;