create table Book01(
Book_id int primary key,
book_name varchar (15),
author_id int ,
price numeric(6,2)
)
--exec sp_help Book
--exec sp_help Author_Table

create table Author_table(
author_id int primary key,
author_name varchar(25),
phone_no varchar (11),
email varchar (15),
Book_id int foreign key (Book_id) references Book01(Book_id),
year int
)
-- exec sp_help Author_Table


create table  Awards_Master_Table(
award_type_id int primary key,
award_name varchar (20),
award_price numeric (10,5)
)
--exec sp_help Awards_Master_Table

create table Award_Table(
award_id int primary key,
award_type_id int foreign key (award_type_id) references Awards_Master_Table (award_type_id) ,
author_id int ,
Book_id int foreign key (Book_id) references Book01 (Book_id),
year int
)
--exec sp_help Award_Table



