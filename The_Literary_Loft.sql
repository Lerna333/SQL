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

