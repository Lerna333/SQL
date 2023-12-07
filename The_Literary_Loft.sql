// The main document of 'The Literary Loft' web-service

// Создать таблицу books для БД "The Literary Loft"
create table books (
	book_id serial primary key,
	title char(50),
    author_id int not null,
    genre_id int not null,
    year_published date,
    release_date date
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
