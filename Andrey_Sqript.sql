-- Создать таблицу shops
CREATE TABLE shops(
shops_id INT PRIMARY KEY,
shope_name CHARACTER(50) NOT NULL,
location CHARACTER(100)NOT NULL,
);

INSERT INTO shops(shops_id,shope_name,location)VALUES
(1,'MegaMart','Central Shopping District, New York, USA'),
(2,'HyperMarket24','Moscow Highway, Moscow, Russia'),
(3,'SuperShopper','Oxford Street, London, UK'),
(4,'MegaPlaza','Avenue du Mont-Royal, Montreal, Canada'),
(5,'Trade Giant','Shanghai Alley, Shanghai, China'),
(6,'SuperCenter','Red Square, Moscow, Russia'),
(7,'GlobalMarket','Dubai Mall, Dubai, UAE'),
(8,'HyperBazaar','Natsuki, Tokyo, Japan'),
(9,'AllUnderOneRoof','Central Park Avenue, New Delhi, India'),
(10,'CityMegaStore','Saint-Laurent Boulevard, Paris, France'),
(11,'EcoMart','Greenwich, London, UK'),
(12,'PlazaMarket','Sao Paulo, Brazil'),
(13,'AlphaMall','Alfa Towers, Dubai, UAE'),
(14,'SpaceShop','Silk Road, Sydney, Australia'),
(15,'Trade Colossus','Central Market, Hong Kong, China');


-- Создать таблицу authors
CREATE TABLE authors(
author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name CHARACTER(30),
author_country CHARACTER(20),
);

-- Наполнить таблицу authors
INSERT INTO authors (author_id, author_name, author_country) VALUES
(1,'Leo Tolstoy','Russia'),
(2,'Ilf and Petrov','Russia'),
(3,'Jane Austen','England'),
(4,'William Golding','England'),
(5,'Arthur Conan Doyle','England'),
(6,'Mikhail Bulgakov','Ukraine'),
(7,'J. K. Rowling','England'),
(8,'Aldous Huxley','England'),
(9,'Heinrich Böll','Germany'),
(10,'Alexander Pushkin','Russia'),
(11,'Elena Fernandez','Spain'),
(12,'Aleksandr Ivanov','Russia'),
(13,'Fatima Khan','India'),
(14,'Pierre Dubois','France'),
(15,'Sven Eriksson','Sweden');
