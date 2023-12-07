// The main document of 'The Literary Loft' web-service

// Создать таблицу books для БД "The Literary Loft"
create table books (
	book_id int NOT NULL PRIMARY KEY,
	title char(50),
    author_id int,
    genre_id int,
    year_published int,
    release_date int
);

//Создать таблицу Sales для БД "The Literary Loft"
create table Sales(
 sale_id int,
 book_id int,
 user_id int,
 sale_date timestamp,
 price int,
 quantity int
);
