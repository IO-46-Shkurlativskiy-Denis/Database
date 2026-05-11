INSERT INTO Supplier(company_name, contact_person, phone_number, email) VALUES
('Постачальник 1', 'Постачальник Віталій', 0123454620, 'postachalnyk1@email.com'),
('Виробник товарів', 'Вареник Даня', 0266798765, 'VarenykD@email.com'),
('Автор', 'Шкурлатівський Денис', 0971821236, 'shkurlativskiy.d.s.-io46@edu.kpi.ua');

INSERT INTO Product(product_name, category, supplier_id, buy_price, sell_price) VALUES
('Продукт 1', 'Категорія 1', 1, 1, 2),
('Продукт 2', 'Категорія 1', 1, 1, 5),
('Товар', 'Товар(Категорія)', 2, 50, 99),
('Цей файл', 'Лаби з ОБД', 3, 46, 20);

INSERT INTO Warehouse(warehouse_name, address) VALUES
('Склад 1', 'Навзваміста, Назвавулиці 45'),
('Склад 2', 'Назваіншогоміста, Назвавулиці 60');

INSERT INTO Product_count(warehouse_id, product_id, product_count) VALUES
(1, 2, 34),
(2, 4, 68),
(1, 1, 1),
(2, 3, 23),
(2, 2, 2);

INSERT INTO Client(client_name, client_surname, phone_number, email) VALUES
('Віталій', 'Клієнт', 0123456789, 'client1@email.com'),
('В`ячеслав', 'Довготелес', 0987654321, 'Dovhoteles123@email.com'),
('Ім`я', 'Прізвище', 0192837465, 'client@email.com');

INSERT INTO Purchase(purchase_time, address, client_id, status) VALUES
('2026-01-05 12:34:56','Містоклієнта, Вулицяклієнта 32', 1, 'У дорозі'),
('2026-01-01 16:00:00','Іншемістоклієнта, Вулицяклієнта 19', 1, 'Отримано'),
('2026-04-04 20:02:22','Назваміста, Назвавулиці 20', 3, 'Доставлено'),
('2026-05-01 06:08:07','Місто123, Вулиця321 2', 2, 'Прийнято');

INSERT INTO Purchase_details(purchase_id, product_id, product_amount, sell_price) VALUES
(1,1,11,111),
(1,2,12,121),
(2,3,4,56),
(3,1,13,113),
(3,4,43,443),
(3,2,23,223),
(4,4,4,4);