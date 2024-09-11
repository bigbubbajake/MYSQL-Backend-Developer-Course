INSERT INTO manufacturer VALUES
(1, 'manufacturer_id_1'),
(2, 'manufacturer_id_2'),
(3, 'manufacturer_id_3'),
(4, 'manufacturer_id_4')
;

INSERT INTO candy VALUES (1, "Reeses"),
(2,"M&Ms"),
(3,"Snickers"),
(4,"Milky Way")
;
UPDATE candy SET candy_name = 'Laffy Taffy'
WHERE id= 3;

UPDATE candy SET candy_price =2.50
WHERE id = 3;

DELETE FROM manufacturer WHERE id = 2;

SELECT manufacturer_id_2 FROM manufacturer;

---------------------------------------------------

INSERT INTO manufacturer (manufacturer_id, manufacturer_name)
VALUES
(1, 'Mars'),
(2, 'Hershey'),
(3, 'Mondelez'),
(4, 'Kellogg');
INSERT INTO candy (candy_id, candy_name, candy_price, manufacturer_id)
VALUES
(1, 'Mars Bar', 3, 1),
(2, 'Hershey Bar', 2, 2),
(3, 'Cadbury Eggs', 1, 3),
(4, 'Ferrero Truffles', 5, 4);
update manufacturer set manufacturer_name = 'Ferrero'
WHERE manufacturer_id = 4;
insert into manufacturer (manufacturer_id, manufacturer_name)
values (5, 'kelloggs');
delete manufacturer
where manufacturer_id = 5
SELECT * FROM manufacturer
SELECT * FROM candy
SELECT candy_name FROM candy
SELECT * FROM candy WHERE candy_id = 1