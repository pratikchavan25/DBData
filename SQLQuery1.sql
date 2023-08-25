create table Author(
author_id int primary key,
name varchar(20),
city varchar(10),
country varchar(15)
)

create table CATEGORY(
category_id int primary key,
description varchar (40),
)
--sp_help CATEGORY
--exec sp_rename 'Author.name','surname'
--sp_help author;

create table Book(
book_id int primary key,
title varchar (20),
author_id int foreign key (author_id) references Author (author_id),
category_id int foreign key (category_id) references CATEGORY (category_id),
year int,
price int,
publisher varchar(25),
Rating int
)
-- sp_help Book (it shows the table created using all parameters)

create table ORDER_DETAILS(
order_no int primary key,
book_id int foreign key (book_id) references Book (book_id),
quantity int
)
sp_help ORDER_DETAILS


