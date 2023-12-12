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
// @zarina_nz: удалить строки по этой таблице Sales. Ниже создается таблица Sales с верными данными
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


// Создать таблицу users для БД "The Literary Loft"
create table sales (
	sale_id serial primary key,
	user_id int,
    foreign key (user_id) references users (user_id), // @zarina_nz: удалить строку
    book_id int,
    foreign key (book_id) references books(book_id), // @zarina_nz: удалить строку
    sale_date timestamp,
    price int,
    quantity int
);

// Наполнить таблицу sales
insert into sales (user_id, book_id, sale_date, price, quantity) 
values  (2, 1, '2022-05-01 20:00:01', 1500, 3), 
        (10, 2, '2022-05-01 20:02:01', 1500, 3),
        (7, 3, '2022-05-01 20:05:01', 1500, 2),
        (5, 4, '2022-05-01 20:07:01', 1500, 1),
        (9, 5, '2023-12-21 14:30:51', 2000, 2),
        (1, 5, '2023-07-15 15:00:24', 1800, 4),
        (4, 17, '2023-11-20 17:20:54', 1950, 2),
        (4, 18, '2023-10-10 10:40:15', 2500, 1),
        (20, 18, '2023-12-10 19:40:15', 2500, 1),
        (1, 7, '2023-08-21 15:35:51', 3000, 1);

//Создать таблицу users для БД "The Literary Loft"	
create table users (
user_id  serial PRIMARY KEY,
username varchar(20),
email varchar(20),
password varchar(20));

//Hаполнить таблицу users

insert into users1 (username, email, password)
values ('Ola', 'ola@email.com', 'past123'),
('Bob', 'bob@email.com', 'securePwd'),
('Charlie', 'charlie@email.com', 'qwerty456'),
('David', 'david@email.com', 'p@ssword'),
('Eva', 'eva@email.com', '123abc'),
('Frank', 'frank@email.com', 'letmein'),
('Grace', 'grace@email.com', 'pass321'),
('Henry', 'henry@email.com', 'sunshine'),
('Ivy', 'ivy@email.com', 'iloveyou'),
('Jack', 'jack@email.com', 'password123'),
('Kate', 'kate@email.com', 'katePwd'),
('Leo', 'leo@email.com', '1234abcd'),
('Mia', 'mia@email.com', 'mypass'),
('Noah', 'noah@email.com', 'noah123'),
('Olivia', 'olivia@email.com', 'oliviaPwd'),
('Peter', 'peter@email.com', 'peterpass'),
('Quinn', 'quinn@email.com', 'qpass'),
('Rose', 'rose@email.com', 'rose123'),
('Sam', 'sam@email.com', 'samPwd'),
('Tina', 'tina@email.com', 'tinapass');


//Создать таблицу genres

create table genres(
	genres_id int primary key,
	genre_name char(20)
);

//Создать таблицу book_shops

create table book_shops(
	book_shop_id int primary key,
	book_id int,
	shop_id int,
	stock_quantity int,
	price int
);

//Наполнить таблицу genres

insert into genres(genre_id,genre_name) values
(1,'Novella'),
(2,'Novel'),
(3,'Poem'),
(4,'Fairy tale'),
(5,'Historical novel'),
(6,'Drama'),
(7,'Comedy'),
(8,'Short story'),
(9,'Mith'),
(10,'Tragedy');

//Наполнить таблицу book_shops

insert into book_shops(book_shop_id,book_id,shop_id,stock_quantity,price) values
(1,1,2,10,25),
(2,1,3,15,12),
(3,2,4,10,15),
(4,3,4,10,16),
(5,4,5,13,17),
(6,5,6,14,12),
(7,6,7,12,25),
(8,7,8,15,36),
(9,8,9,40,40),
(10,10,15,20,15),
(11,15,20,20,25),
(12,10,15,23,24),
(13,15,8,12,15),
(14,17,19,24,35),
(15,10,23,12,25),
(16,25,12,24,30),
(17,25,20,30,40),
(18,20,22,38,29),
(19,10,20,25,23),
(20,11,13,14,15);


