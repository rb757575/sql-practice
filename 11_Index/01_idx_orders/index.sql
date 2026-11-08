DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    order_status VARCHAR(50)
);

INSERT INTO orders VALUES 
(1001, 201, '2026-10-01', 150, 'Delivered'),
(1002, 205, '2026-10-01', 320, 'Processing'),
(1003, 102, '2026-10-02', 85, 'Shipped'),
(1004, 304, '2026-10-02', 450, 'Delivered'),
(1005, 110, '2026-10-03', 120, 'Cancelled'),
(1006, 215, '2026-10-03', 210, 'Delivered'),
(1007, 108, '2026-10-04', 95, 'Shipped'),
(1008, 401, '2026-10-04', 600, 'Processing'),
(1009, 302, '2026-10-05', 340, 'Delivered'),
(1010, 119, '2026-10-05', 75, 'Delivered'),
(1011, 222, '2026-10-06', 430, 'Shipped'),
(1012, 105, '2026-10-06', 180, 'Delivered'),
(1013, 333, '2026-10-07', 220, 'Processing'),
(1014, 145, '2026-10-07', 510, 'Delivered'),
(1015, 112, '2026-10-08', 90, 'Cancelled'),
(1016, 201, '2026-10-08', 310, 'Delivered'),
(1017, 309, '2026-10-09', 140, 'Shipped'),
(1018, 412, '2026-10-09', 750, 'Processing'),
(1019, 103, '2026-10-10', 260, 'Delivered'),
(1020, 218, '2026-10-10', 410, 'Delivered'),
(1021, 150, '2026-10-11', 115, 'Shipped'),
(1022, 301, '2026-10-11', 390, 'Delivered'),
(1023, 220, '2026-10-12', 200, 'Processing'),
(1024, 111, '2026-10-12', 480, 'Delivered'),
(1025, 405, '2026-10-13', 130, 'Cancelled'),
(1026, 204, '2026-10-13', 350, 'Delivered'),
(1027, 312, '2026-10-14', 270, 'Shipped'),
(1028, 109, '2026-10-14', 530, 'Processing'),
(1029, 214, '2026-10-15', 160, 'Delivered'),
(1030, 331, '2026-10-15', 420, 'Delivered'),
(1031, 102, '2026-10-16', 290, 'Shipped'),
(1032, 402, '2026-10-16', 610, 'Delivered'),
(1033, 211, '2026-10-17', 175, 'Processing'),
(1034, 305, '2026-10-17', 380, 'Delivered'),
(1035, 115, '2026-10-18', 95, 'Cancelled'),
(1036, 208, '2026-10-18', 330, 'Delivered'),
(1037, 314, '2026-10-19', 240, 'Shipped'),
(1038, 410, '2026-10-19', 490, 'Processing'),
(1039, 106, '2026-10-20', 310, 'Delivered'),
(1040, 225, '2026-10-20', 550, 'Delivered'),
(1041, 118, '2026-10-21', 145, 'Shipped'),
(1042, 303, '2026-10-21', 370, 'Delivered'),
(1043, 219, '2026-10-22', 230, 'Processing'),
(1044, 113, '2026-10-22', 460, 'Delivered'),
(1045, 408, '2026-10-23', 190, 'Cancelled'),
(1046, 207, '2026-10-23', 340, 'Delivered'),
(1047, 316, '2026-10-24', 280, 'Shipped'),
(1048, 110, '2026-10-24', 520, 'Processing'),
(1049, 216, '2026-10-25', 170, 'Delivered'),
(1050, 335, '2026-10-25', 440, 'Delivered');

--Create single-column index to optimize order lookup
CREATE INDEX optimasation
ON orders(order_id);


--Fast lookup query using index scan
SELECT * 
FROM orders 
WHERE order_id = 1025;