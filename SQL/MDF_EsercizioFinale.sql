--  TASK 2: Implementa fisicamente le tabelle utilizzando il DBMS

CREATE DATABASE ESAMEToysGroup;

USE ESAMEToysGroup;

CREATE TABLE Categories (
	Category_ID INT NOT NULL,
    CategoryName VARCHAR(20)
);

ALTER TABLE Categories
ADD CONSTRAINT PK_Categories PRIMARY KEY(Category_ID);

CREATE TABLE Product (
	Product_ID INT NOT NULL,
    Category_ID INT NOT NULL,
    ProductName VARCHAR(50),
	Price DECIMAL(5,2)
);

ALTER TABLE Product
ADD CONSTRAINT PK_Product PRIMARY KEY(Product_ID);

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Categories FOREIGN KEY (Category_ID) REFERENCES categories(Category_ID);

CREATE TABLE Region (
	Region_ID INT NOT NULL,
    RegionName VARCHAR(20)
);

ALTER TABLE Region
ADD CONSTRAINT PK_Region PRIMARY KEY(Region_ID);

CREATE TABLE Country (
	Country_ID INT NOT NULL,
    Region_ID INT NOT NULL,
    CountryName VARCHAR(20)
    );
    
ALTER TABLE Country
ADD CONSTRAINT PK_Country PRIMARY KEY(Country_ID);

ALTER TABLE Country
ADD CONSTRAINT FK_Country_Region FOREIGN KEY (Region_ID) REFERENCES Region(Region_ID);


CREATE TABLE Sales(
	Sales_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Country_ID INT NOT NULL,
    SalesDate DATE,
    Quantity INT,
    TotalPrice DECIMAL(7,2)
    );
    
ALTER TABLE Sales
ADD CONSTRAINT PK_Sales PRIMARY KEY(Sales_ID);

ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Product FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID);

ALTER TABLE Sales
ADD CONSTRAINT fk_sales_country FOREIGN KEY (Country_id) REFERENCES Country(Country_id);
    
-- Task 3: Popola le tabelle utilizzando dati a tua discrezione (sono sufficienti pochi record)

INSERT INTO Categories (Category_ID, CategoryName) VALUES
(1, 'Toys'),
(2, 'Games'),
(3, 'Books'),
(4, 'Bikes'),
(5, 'Electronics'),
(6, 'Clothing'),
(7, 'Outdoor'),
(8, 'School Supplies'),
(9, 'Furniture'),
(10, 'Art Supplies');

INSERT INTO Product (Product_ID, Category_ID, ProductName, Price) VALUES
(1, 1, 'Toy Car', 15.99),
(2, 1, 'Toy Train', 25.50),
(3, 1, 'Doll', 19.90),
(4, 1, 'Action Figure', 12.50),
(5, 1, 'Building Blocks', 29.99),
(6, 1, 'Plush Bear', 18.20),
(7, 1, 'Remote Control Car', 34.99),
(8, 1, 'Toy Helicopter', 40.00),
(9, 1, 'Lego Set', 49.99),
(10, 1, 'Puzzle 1000 Pieces', 22.50),
(11, 2, 'Board Game A', 35.00),
(12, 2, 'Board Game B', 28.99),
(13, 2, 'Card Game Classic', 9.99),
(14, 2, 'Trivia Game', 24.00),
(15, 2, 'Chess Set', 15.00),
(16, 2, 'Memory Game', 8.50),
(17, 2, 'Strategy Game', 40.00),
(18, 2, 'Puzzle Game', 12.00),
(19, 2, 'Checkers Set', 7.99),
(20, 2, 'Adventure Game', 29.99),
(21, 3, 'Story Book', 8.99),
(22, 3, 'Educational Book', 10.99),
(23, 3, 'Science Fiction Book', 12.50),
(24, 3, 'Mystery Novel', 14.99),
(25, 3, 'Fantasy Book', 18.00),
(26, 3, 'Biography Book', 11.50),
(27, 3, 'Comic Book A', 9.50),
(28, 3, 'Comic Book B', 10.00),
(29, 3, 'Picture Book', 7.50),
(30, 3, 'Non-Fiction Book', 13.99),
(31, 4, 'Mountain Bike', 145.00),
(32, 4, 'Road Bike', 139.00),
(33, 4, 'BMX Bike', 120.00),
(34, 4, 'Kid\'s Bike', 85.50),
(35, 4, 'Electric Bike', 250.00),
(36, 4, 'Foldable Bike', 180.00),
(37, 4, 'Hybrid Bike', 160.00),
(38, 4, 'Balance Bike', 70.00),
(39, 4, 'Bicycle Helmet', 29.99),
(40, 4, 'Bike Pump', 15.00),
(41, 5, 'Laptop', 499.99),
(42, 5, 'Tablet', 299.99),
(43, 5, 'Smartphone', 699.99),
(44, 5, 'Smartwatch', 149.99),
(45, 5, 'Gaming Console', 399.99),
(46, 5, 'Camera', 199.99),
(47, 5, 'Headphones', 49.99),
(48, 5, 'Bluetooth Speaker', 75.00),
(49, 5, 'Smart TV', 550.00),
(50, 5, 'Printer', 129.99),
(51, 6, 'T-Shirt', 12.99),
(52, 6, 'Hoodie', 25.99),
(53, 6, 'Jeans', 40.00),
(54, 6, 'Jacket', 59.99),
(55, 6, 'Socks (5-pack)', 9.99),
(56, 6, 'Sneakers', 45.00),
(57, 6, 'Cap', 15.00),
(58, 6, 'Gloves', 8.99),
(59, 6, 'Scarf', 12.00),
(60, 6, 'Sweater', 20.00),
(61, 7, 'Tent', 99.99),
(62, 7, 'Sleeping Bag', 45.00),
(63, 7, 'Camping Stove', 25.99),
(64, 7, 'Lantern', 12.50),
(65, 7, 'Hiking Boots', 55.00),
(66, 7, 'Backpack', 35.00),
(67, 7, 'Water Bottle', 10.00),
(68, 7, 'Fishing Rod', 29.99),
(69, 7, 'Compass', 5.99),
(70, 7, 'Binoculars', 40.00),
(71, 8, 'Notebook', 2.50),
(72, 8, 'Pencil Case', 3.50),
(73, 8, 'Ruler', 1.00),
(74, 8, 'Calculator', 10.00),
(75, 8, 'Glue Stick', 0.99),
(76, 8, 'Scissors', 1.99),
(77, 8, 'Highlighter Set', 5.00),
(78, 8, 'Stapler', 4.50),
(79, 8, 'Backpack', 15.00),
(80, 8, 'Eraser', 0.50),
(81, 9, 'Kids Desk', 50.00),
(82, 9, 'Kids Chair', 20.00),
(83, 9, 'Bookshelf', 60.00),
(84, 9, 'Toy Storage', 30.00),
(85, 9, 'Bed Frame', 100.00),
(86, 9, 'Mattress', 75.00),
(87, 9, 'Night Stand', 25.00),
(88, 9, 'Desk Lamp', 15.00),
(89, 9, 'Toy Chest', 45.00),
(90, 9, 'Dresser', 80.00),
(91, 10, 'Watercolor Set', 15.00),
(92, 10, 'Sketch Pad', 7.50),
(93, 10, 'Crayons', 5.00),
(94, 10, 'Acrylic Paint Set', 20.00),
(95, 10, 'Paint Brushes', 10.00),
(96, 10, 'Canvas Board', 8.00),
(97, 10, 'Coloring Book', 3.99),
(98, 10, 'Glue Gun', 9.99),
(99, 10, 'Craft Paper Pack', 6.50),
(100, 10, 'Modeling Clay', 4.00),
(101, 1, 'Toy Robot', 30.00),
(102, 2, 'Puzzle Adventure', 15.00),
(103, 3, 'Classic Novel', 10.50),
(104, 4, 'Tricycle', 50.00),
(105, 5, 'Smartphone Case', 19.99),
(106, 6, 'Baseball Cap', 13.50),
(107, 7, 'Hiking Backpack', 40.00),
(108, 8, 'Calculator Scientific', 25.00),
(109, 9, 'Toy Organizer', 55.00),
(110, 10, 'Origami Paper Set', 6.99),
(111, 1, 'Toy Kitchen Set', 35.00),
(112, 2, 'Board Game Classic', 45.00),
(113, 3, 'Adventure Book', 14.00),
(114, 4, 'Electric Scooter', 150.00),
(115, 5, 'Wireless Charger', 29.99),
(116, 6, 'Winter Jacket', 60.00),
(117, 7, 'Camping Chair', 20.00),
(118, 8, 'School Backpack', 18.00),
(119, 9, 'Play Table', 35.00),
(120, 10, 'Calligraphy Set', 12.00),
(121, 1, 'Mini Drone', 70.00),
(122, 2, 'Dice Game', 5.50),
(123, 3, 'Comic Novel', 11.00),
(124, 4, 'Roller Skates', 45.00),
(125, 5, 'Bluetooth Earbuds', 59.99),
(126, 6, 'Raincoat', 30.00),
(127, 7, 'Waterproof Bag', 25.00),
(128, 8, 'Markers Set', 9.99),
(129, 9, 'Toy Shelves', 60.00);

INSERT INTO Region (Region_ID, RegionName) VALUES
(1, 'NorthAmerica'),
(2, 'SouthAmerica'),
(3, 'WestEurope'),
(4, 'SouthEurope'),
(5, 'AsiaPacific');

INSERT INTO Country (Country_ID, Region_ID, CountryName) VALUES
(1, 1, 'USA'),
(2, 1, 'Canada'),
(3, 2, 'Brazil'),
(4, 2, 'Argentina'),
(5, 3, 'France'),
(6, 3, 'Germany'),
(7, 4, 'Italy'),
(8, 4, 'Greece'),
(9, 5, 'Japan'),
(10, 5, 'Australia');

INSERT INTO Sales (Sales_ID, Product_ID, Country_ID, SalesDate, Quantity, TotalPrice) VALUES
(1, 1, 1, '2023-10-01', 3, 47.97), 		 	-- 15.99 * 3
(2, 5, 4, '2023-10-03', 2, 24.00),  		-- 12.00 * 2
(3, 10, 3, '2023-10-05', 1, 49.99),		 	-- 49.99 * 1
(4, 8, 5, '2023-10-07', 4, 140.00),		 	-- 35.00 * 4
(5, 25, 2, '2023-10-10', 1, 18.00),			-- 18.00 * 1
(6, 29, 8, '2023-10-12', 5, 37.50), 		-- 7.50 * 5
(7, 3, 9, '2023-10-15', 6, 119.40), 		-- 19.90 * 6
(8, 2, 10, '2023-10-18', 10, 255.00),		-- 25.50 * 10
(9, 6, 2, '2023-10-20', 7, 62.93), 			-- 8.99 * 7
(10, 15, 6, '2023-10-25', 3, 45.00),		-- 15.00 * 3
(11, 20, 7, '2023-11-01', 2, 59.98), 		-- 29.99 * 2
(12, 7, 1, '2023-11-05', 1, 34.99), 		-- 34.99 * 1
(13, 9, 4, '2023-11-07', 1, 139.00), 		-- 139.00 * 1
(14, 30, 5, '2023-11-10', 2, 27.98), 		-- 13.99 * 2
(15, 40, 6, '2023-11-15', 4, 60.00), 		-- 15.00 * 4
(16, 50, 3, '2023-11-17', 2, 259.98),		 -- 129.99 * 2
(17, 55, 2, '2023-11-20', 5, 49.95),		 -- 9.99 * 5
(18, 60, 9, '2023-11-22', 6, 120.00),		 -- 20.00 * 6
(19, 75, 10, '2023-11-25', 8, 7.92), 		 -- 0.99 * 8
(20, 90, 8, '2023-11-28', 3, 135.00),		 -- 45.00 * 3
(21, 33, 2, '2023-12-01', 1, 120.00),      -- 120.00 * 1
(22, 45, 3, '2023-12-02', 3, 1199.97),     -- 399.99 * 3
(23, 41, 4, '2023-12-03', 2, 999.98),      -- 499.99 * 2
(24, 58, 5, '2023-12-04', 4, 35.96),       -- 8.99 * 4
(25, 14, 1, '2023-12-05', 1, 24.00),       -- 24.00 * 1
(26, 99, 6, '2023-12-06', 3, 19.50),       -- 6.50 * 3
(27, 21, 7, '2023-12-07', 2, 17.98),       -- 8.99 * 2
(28, 67, 8, '2023-12-08', 1, 10.00),       -- 10.00 * 1
(29, 46, 9, '2023-12-09', 1, 199.99),      -- 199.99 * 1
(30, 54, 10, '2023-12-10', 5, 299.95),     -- 59.99 * 5
(31, 85, 2, '2023-12-11', 1, 100.00),      -- 100.00 * 1
(32, 86, 3, '2023-12-12', 3, 225.00),      -- 75.00 * 3
(33, 27, 4, '2023-12-13', 7, 66.50),       -- 9.50 * 7
(34, 62, 5, '2023-12-14', 2, 90.00),       -- 45.00 * 2
(35, 70, 6, '2023-12-15', 4, 160.00),      -- 40.00 * 4
(36, 83, 7, '2023-12-16', 1, 60.00),       -- 60.00 * 1
(37, 12, 8, '2023-12-17', 2, 57.98),       -- 28.99 * 2
(38, 52, 9, '2023-12-18', 6, 155.94),      -- 25.99 * 6
(39, 73, 10, '2023-12-19', 8, 8.00),       -- 1.00 * 8
(40, 56, 1, '2023-12-20', 3, 135.00),      -- 45.00 * 3
(41, 74, 2, '2023-12-21', 5, 50.00),       -- 10.00 * 5
(42, 28, 3, '2023-12-22', 7, 70.00),       -- 10.00 * 7
(43, 93, 4, '2023-12-23', 10, 50.00),      -- 5.00 * 10
(44, 87, 5, '2023-12-24', 2, 8.00),        -- 4.00 * 2
(45, 23, 6, '2023-12-25', 6, 75.00),       -- 12.50 * 6
(46, 78, 7, '2023-12-26', 1, 4.50),        -- 4.50 * 1
(47, 19, 8, '2023-12-27', 8, 63.92),       -- 7.99 * 8
(48, 96, 9, '2023-12-28', 3, 24.00),       -- 8.00 * 3
(49, 65, 10, '2023-12-29', 5, 150.00),     -- 30.00 * 5
(50, 88, 1, '2023-12-30', 3, 180.00);      -- 60.00 * 3

-- TASK 4 QUERY1 Verificare che i campi definiti come PK siano univoci.

SELECT								
	count(Category_ID),
    count(DISTINCT Category_ID)
FROM categories AS catComparation;

/* Ho pensato a due approcci il primo è quello di fare un test a confronto fra il conteggio tot delle categorie e un conteggio distinct. 
Visto che il result set è uguale allora la PK è univoca*/

SELECT 
	Product_ID,
    COUNT(Product_ID) as Count
FROM Product
GROUP BY Product_ID
HAVING COUNT(Product_ID) > 1;

/* La seconda idea è conteggiare quante volte si ripete la PK e raggruppandole per la stessa PK avente come risultato >1
così nel caso di non univocità si potrebbe capire da subito su quale PK intervenire, a differenza della prima soluzione che non identifica esattamente la PK in errore.*/

SELECT 
	Region_ID,
    COUNT(Region_ID) AS count
FROM Region
GROUP BY Region_ID
HAVING count > 1;

SELECT 
	Country_ID,
    COUNT(Country_ID) AS count
FROM Country
GROUP BY Country_ID
HAVING count > 1;

SELECT 
	Sales_ID,
    COUNT(Sales_ID) AS count
FROM Sales
GROUP BY Sales_ID
HAVING count > 1;

/* QUERY2 Esporre l’elenco delle transazioni indicando nel result set il codice documento, la data, il nome del prodotto, la categoria del prodotto, il nome dello stato,
il nome della regione di vendita e un campo booleano valorizzato in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno*/

SELECT 
	s.Sales_ID AS codice_documento,
    s.SalesDate AS data_vendita,
    p.ProductName AS nome_prodotto,
    p.Category_ID AS categoria,
    c.CountryName AS stato,
    r.RegionName AS area_geografica,
--  DATEDIFF(current_date(), s.salesdate) AS giorni_passati,
CASE 
	WHEN  DATEDIFF(current_date(), s.salesdate) > 180 THEN 'SI'
    ELSE 'NO'
END 'Supera180Giorni'

FROM sales AS s
INNER JOIN product AS p
	ON p.Product_ID = s.Product_ID
INNER JOIN country AS c
	ON c.Country_ID = s.Country_ID
INNER JOIN region AS r
	ON r.Region_ID = c.Region_ID;

 -- per verificare il case when funzioni correttamente vorrei provare ad aggiornare solo la data della riga con Sales_ID = 19 nella tabella Sales con una data che sia esattamente 180 giorni prima di oggi

START TRANSACTION;
	UPDATE Sales
	SET SalesDate = CURDATE() - INTERVAL 180 DAY
	WHERE Sales_ID = 19;
    SELECT 
	s.Sales_ID AS codice_documento,
    s.SalesDate AS data_vendita,
    p.ProductName AS nome_prodotto,
    p.Category_ID AS categoria,
    c.CountryName AS stato,
    r.RegionName AS area_geografica,
--  DATEDIFF(current_date(), s.salesdate) AS giorni_passati,
CASE 
	WHEN  DATEDIFF(current_date(), s.salesdate) > 180 THEN 'SI'
    ELSE 'NO'
END 'Supera180Giorni'

FROM sales AS s
INNER JOIN product AS p
	ON p.Product_ID = s.Product_ID
INNER JOIN country AS c
	ON c.Country_ID = s.Country_ID
INNER JOIN region AS r
	ON r.Region_ID = c.Region_ID;
ROLLBACK;

/* SELECT 
	Sales_ID,
    SalesDate
FROM sales 
WHERE sales_ID = '19'
*/

/*QUERY 3 Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito.
(ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). Nel result set devono comparire solo il codice prodotto e il totale venduto. */


SELECT 
	p.Product_ID AS 'Codice Prodotto',
    SUM(s.Quantity) AS 'Totale Venduto'
FROM sales AS s
INNER JOIN product AS p
ON p.Product_ID = s.Product_ID
WHERE s.SalesDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY p.Product_ID
HAVING SUM(s.Quantity) > ( SELECT 
							AVG(TotalQuantity) 
							FROM (SELECT SUM(Quantity) AS TotalQuantity
									FROM sales
									WHERE SalesDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
									GROUP BY SalesDate) AS AvgSales);
                                    
-- 4) QUERY 4 Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno. 

SELECT
	p.ProductName,
    s.Product_ID,
    s.TotalPrice,
    YEAR(s.SalesDate)
FROM sales AS s
INNER JOIN product AS p
ON p.Product_ID = s.Product_ID
WHERE p.Product_ID = s.Product_ID
GROUP BY p.ProductName,
    s.Product_ID,
    s.TotalPrice,
    YEAR(s.SalesDate)
ORDER BY s.Product_ID;

 -- per verificare che funzioni correttamente vorrei provare ad aggiornare solo la data della riga con Sales_ID = 1 nella tabella Sales con una data che sia esattamente 180 giorni prima di oggi

/*  START TRANSACTION;
		INSERT INTO Sales (Sales_ID, Product_ID, Country_ID, SalesDate, Quantity, TotalPrice)
				VALUES (
						(SELECT MAX(Sales_ID) + 1 FROM Sales),         -- nuovo Sales_ID univoco
						(SELECT Product_ID FROM Sales WHERE Sales_ID = 1),  -- Product_ID di Sales_ID = 1
						(SELECT Country_ID FROM Sales WHERE Sales_ID = 1),  -- Country_ID di Sales_ID = 1
						(SELECT current_date() - INTERVAL 180 DAY),     
						2,
						31.98 );*/


-- 5) Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.

SELECT
	c.CountryName AS 'Stato',
    SUM(s.TotalPrice) AS 'Fatturato Totale',
	YEAR(s.SalesDate) AS 'Anno'
FROM sales AS s
INNER JOIN country AS c
ON c.Country_ID = s.Country_ID
GROUP BY c.CountryName,
		YEAR(s.SalesDate)
ORDER BY Anno, 
SUM(s.TotalPrice) DESC;


-- 6) Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?

SELECT 
	c.Category_ID,
	c.CategoryName,
    SUM(s.Quantity) AS Totale_Quantità
FROM categories AS c
INNER JOIN product AS p
ON c.Category_ID = p.Category_ID
INNER JOIN sales AS s
ON s.Product_ID = p.Product_ID
GROUP BY c.Category_ID,
		c.CategoryName
LIMIT 1;

-- 7) Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti.

-- PRIMO APPROCCIO

SELECT
	ProductName
FROM product
WHERE Product_ID NOT IN(SELECT Product_ID
						FROM sales);
                        
-- SECONDO APPROCCIO

SELECT p.ProductName
FROM product AS p
LEFT JOIN sales AS s
ON s.Product_ID = p.Product_ID
WHERE s.Product_ID IS NULL;

-- 8) Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria)

CREATE VIEW MDF_VIEW_Prodotti AS
	SELECT
		p.Product_ID AS Codice_Prodottto,
        p.ProductName AS Nome_Prodotto,
        c.Category_ID AS Codice_Categoria,
        c.CategoryName AS Nome_Categoria,
        p.Price AS Prezzo_Unitario
    FROM product AS p
    INNER JOIN categories AS c
    ON c.Category_ID = p.Category_ID;

-- 9) Creare una vista per le informazioni geografiche

CREATE VIEW MDF_VIEW_Geografia AS
	SELECT 
    r.Region_ID AS Codice_Area_Geografica,
    r.RegionName AS Nome_Area_Geografica,
    c.Country_ID AS Codice_Stato,
    c.CountryName AS Nome_Stato
    FROM region AS r
    INNER JOIN country AS c
    ON c.Region_ID = r.Region_ID;

