drop database if exists final_proj_3161;
create database final_proj_3161;
use final_proj_3161;

create table users
(
    user_id int not null unique,
    first_name varchar(15) not null,
    last_name varchar(15) not null,
    tele_num varchar (15) unique,
    home_address varchar (50),
    email varchar (45) not null unique,
    dob Date not null,
    profile_pic_address varchar(50),
    /*foreign key (user_id, address_id) references addresses,*/
    primary key (user_id)
);

create table logins
(
    user_id int not null unique,
    email varchar (45) not null, unique,
    pass_digest varchar(65) not null, 
    salt int not null, 
    primary key (user_id, emails)
)

/*create table addresses
(
    record_id int not null unique, 
    user_id int not null unique,
    street_number int not null,
    street_pre varchar(10),
    street_suf varchar(10),
    foreign key(user_id) references users,
    primary key(user_id, record_id)
);*/

create table friends
(
    friend_id int not null UNIQUE,
    user_id int not null UNIQUE,
    fgroup varchar(10),
    foreign key(user_id) references users,
    primary key (user_id, friend_id)
);

create table posts
(
    post_id int not null UNIQUE,
    user_id int not null UNIQUE,
    text_content varchar(300),
    media_link varchar(30),
    foreign key (user_id) references users,
    primary key (post_id, user_id)
)
