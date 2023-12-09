// The main document of 'The Literary Loft' web-service

// Создать таблицу books для БД "The Literary Loft"
create table books (
	book_id serial primary key,
	title char(50),
    author_id int not null,
    foreign key (author_id) references authors (author_id),
    genre_id int not null,
    foreign key (genre_id) references genres(genre_id),
    release_date date
);

// Наполнить таблицу books для БД "The Literary Loft"
insert into books (title, author_id, genre_id, release_date) 
values  ('War & Peace Volume 1', 1, 1, '1869-05-12'), 
        ('War & Peace Volume 2', 1, 1, '1870-07-15'),
        ('War & Peace Volume 3', 1, 1, '1871-02-21'),
        ('War & Peace Volume 4', 1, 1, '1872-10-10'),
        ('Anna Karenina', 1, 1, '1878-02-21'),
        ('Pride & Prejudice', 3, 1,'1813-01-28'),
        ('The Little Golden Calf', 2, 1, '1931-08-18'),
        ('Lord of the Flies', 4, 1, '1954-09-17'),  
        ('The Hound of the Baskervilles', 5, 2, ''),  
        ('The Master and Margarita', 6, 1, '1967-04-17'), 
        ('Heart of a Dog', 6, 2, '1925-07-23'),
        ("Harry Potter and the Philosopher's Stone", 7, 1, '1997-02-21'),
        ('Harry Potter and the Chamber of Secrets', 7, 1, '1998-10-10'),
        ('Harry Potter and the Prisoner of Azkaban', 7, 1, '1999-12-01'),
        ('Harry Potter and the Goblet of Fire', 7, 1, '2000-09-10'),
        ('Brave New World', 8, 1, '1931-05-14'),
        ('Billiards at Half-Past Nine', 9, 1,'1950-02-21'),
        ('Evgeniy Onegin', 10, 3, '1833-10-10'),
        ('The Queen of Spades', 10, 2, '1834-03-25'), 
        ('The Tale of the Fisherman and the Fish', 10, 4, '1834-10-07');

//Создать таблицу Sales для БД "The Literary Loft"
create table Sales(
 sale_id int,
 book_id int,
 user_id int,
 sale_date timestamp,
 price int,
 quantity int
);
-- Создать таблицу shops
CREATE TABLE shops(
shops_id INT PRIMARY KEY,
shope_name CHARACTER(50) NOT NULL,
location CHARACTER(100)NOT NULL,
);

-- Наполнить таблицу shops
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
