create table Movies(
Movie_id int primary key,
movie_name varchar (25),
release_year int,
box_office_collection int 
)
-- exec sp_help Movies

create table Roles(
roll_id int primary key,
roll_name int,
)
--exec sp_help Roles

create table Celebrity(
celebrity_id int primary key,
celebrity_name varchar (20),
birth_date int,
phn_no numeric (12),
email varchar (15)
)
--exec sp_help Celebrity

create table BollywoodData(
Bollywood_Data_id int primary key,
celebrity_id int foreign key (celebrity_id) references Celebrity (celebrity_id),
Movie_id int foreign key (Movie_id) references Movies (Movie_id),
roll_id int foreign key (roll_id) references Roles (roll_id)
)
exec sp_help BollywoodData

