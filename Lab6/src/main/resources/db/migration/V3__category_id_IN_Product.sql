ALTER TABLE Product
ADD category_id INT;

ALTER TABLE Product
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id) REFERENCES Category(category_id);

UPDATE Product p
SET category_id=c.category_id
FROM Category c
WHERE c.category_name=p.category;