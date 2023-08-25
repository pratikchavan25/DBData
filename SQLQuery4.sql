create table FBUsers(
user_id int primary key,
user_name varchar  (20),
email varchar(15),
phon_no numeric (11),
total_posts int
)
--exec sp_help FBUsers

create table Friendship(
friend_id int primary key,
user_id int foreign key (user_id) references FBUsers (user_id),
friendship_status_code int,
)
exec sp_help Friendship

Create table Post(
post_id int primary key,
user_id int foreign key (user_id) references FBUsers (user_id),
postContent varchar (46),
postImage varchar (50),
PostVideo varchar (100)
)

create table Friendshipstatus(
Status_code int primary key,
Ststus varchar (20)
)

