create database music;

use music;

-- Create tables
create table band(
id int not null auto_increment,
name varchar(60) not null,
primary key(id)
);

create table album(
id int not null auto_increment,
name varchar(100) not null,
album_year int not null,
created_by int not null, -- variable to reference band.id table
primary key(id),
foreign key(created_by) references band(id) -- Foreing Key to reference the table band.id
);

create table song(
id int not null auto_increment,
name varchar(100) not null,
album_id int not null, -- variable to reference album table
primary key(id),
foreign key(album_id) references album(id) -- Foreign key to reference the table album.id
);