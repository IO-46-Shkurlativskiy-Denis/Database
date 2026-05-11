SELECT 
	p.product_name,
	p.category,
	p.buy_price,
	p.sell_price
FROM Product p
WHERE supplier_id=3;

INSERT INTO Product(product_name, category, supplier_id, buy_price, sell_price) VALUES
('select-insert', 'Лаби з ОБД', 3, 6, 8),
('update-delete', 'Лаби з ОБД', 3, 7, 10),
('file123', 'Ще якийсь файл', 3, 9, 90);

SELECT 
	p.product_id,
	p.product_name,
	p.category,
	p.buy_price,
	p.sell_price
FROM Product p
WHERE supplier_id=3 AND category='Лаби з ОБД';