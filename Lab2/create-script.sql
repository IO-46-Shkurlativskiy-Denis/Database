CREATE TABLE IF NOT EXISTS Supplier(
	supplier_id SERIAL PRIMARY KEY,
	company_name VARCHAR(100) NOT NULL,
	contact_person VARCHAR(100) NOT NULL,
	phone_number INTEGER UNIQUE,
	email VARCHAR(255) UNIQUE
);

CREATE TABLE IF NOT EXISTS Product(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(100) NOT NULL,
	supplier_id INT NOT NULL REFERENCES Supplier(supplier_id),
	buy_price NUMERIC NOT NULL,
	sell_price NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS Warehouse(
	warehouse_id SERIAL PRIMARY KEY,
	warehouse_name VARCHAR(100),
	address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Product_count(
	warehouse_id INT NOT NULL REFERENCES Warehouse(warehouse_id),
	product_id INT NOT NULL REFERENCES Product(product_id),
	product_count INT NOT NULL,
	PRIMARY KEY (warehouse_id, product_id)
);

CREATE TABLE IF NOT EXISTS Client(
	client_id SERIAL PRIMARY KEY,
	client_name VARCHAR(100) NOT NULL,
	client_surname VARCHAR(100) NOT NULL,
	phone_number INTEGER UNIQUE,
	email VARCHAR(255) UNIQUE
);

CREATE TYPE purchase_status AS ENUM ('Прийнято', 'У дорозі', 'Доставлено', 'Отримано');

CREATE TABLE IF NOT EXISTS Purchase(
	purchase_id SERIAL PRIMARY KEY,
	purchase_time TIMESTAMP NOT NULL,
	address VARCHAR(100) NOT NULL,
	client_id INT NOT NULL REFERENCES Client(client_id),
	status purchase_status NOT NULL
);

CREATE TABLE IF NOT EXISTS Purchase_details(
	purchase_id INT NOT NULL REFERENCES Purchase(purchase_id),
	product_id INT NOT NULL REFERENCES Product(product_id),
	product_amount INT NOT NULL CHECK (product_amount > 0),
	sell_price NUMERIC NOT NULL,
	total_price NUMERIC GENERATED ALWAYS AS (sell_price * product_amount) STORED,
	PRIMARY KEY (purchase_id, product_id)
);