UPDATE Purchase
SET
	status='Доставлено',
	client_id=2
WHERE purchase_id=1;

SELECT * FROM Purchase;

SELECT
	w.warehouse_id,
	w.warehouse_name,
	w.address,
	pr.product_id,
	pr.product_count
FROM Warehouse w
JOIN Product_count pr ON w.warehouse_id=pr.warehouse_id;

UPDATE Product_count
SET
	product_count=0
WHERE warehouse_id=1;

UPDATE Product_count
SET
	product_count=36
WHERE warehouse_id=2 AND product_id=2;

DELETE FROM Product_Count WHERE warehouse_id=1;
DELETE FROM Warehouse WHERE warehouse_id=1;

SELECT
	w.warehouse_id,
	w.warehouse_name,
	w.address,
	pr.product_id,
	pr.product_count
FROM Warehouse w
JOIN Product_count pr ON w.warehouse_id=pr.warehouse_id
WHERE w.warehouse_id=2;