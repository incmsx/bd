create table location(
id int primary key, 
name text not null
);

create table crash(
id int primary key, 
discription text not null
);

create table character(
id int primary key,
name varchar(20) not null, 
location_id int references location(id),
crash_id int references crash(id);
);

create table character_location(
character_id int, 
location_id int,
primary key(character_id,location_id)
);

create table colleague(
id int primary key,
name varchar(20) not null, 
character_id int not null references character(id),
crash_id int not null references crash(id);
);

create table lurking(
id int primary key, 
discription text not null,
character_id int not null references character(id)
);

create table proctor(
id int primary key, 
personnel_n int not null,
lurking_id int not null references lurking(id)
);

create table assumption(
id int primary key, 
discription text not null,
character_id int not null references character(id)
);

create table belief(
id int primary key, 
discription text not null,
cause int not null references crash(id),
character_id int not null references character(id)
);

