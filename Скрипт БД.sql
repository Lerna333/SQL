--1.1 В репозитории SQL в файле “Скрипт БД” создать таблицу Product, 
-- в которой есть колонки maker (число), model (строка 50 символов)
create table Product (
	maker int,
	model varchar(50)
);

-- 1.7 В репозитории SQL в файле “Скрипт БД” добавить в таблицу Product 
-- колонку price (cтрока, 20 символов)

alter table Product
add price varchar (20);



