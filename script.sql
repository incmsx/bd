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

insert into character values(0,null, 0, null);
insert into character values(1, 'Сирэйнис', 0, null);
insert into colleague values(0, null, 0, 1);
insert into colleague values(1, 'Петр', 0, 1);
insert into colleague values(1, 'Иван', 0, 1);
insert into colleague values(2, 'Иван', 0, 1);
insert into crash values (0,'Поломка подземной транспортной системы');
insert into location values(0, 'Комната');
insert into belief values (0, 'возратиться в Лиз прежним маршрутом уже невозможно', 0, 0);
insert into assumption values(0, 'ему не помешают передвигаться свободно, до тех пор, пока он не вознамериться покинуть Диаспар', 0);
insert into lurking values(0, 'Слежка за главным героем', 0);
insert into proctor values (0, 413029, 0);
insert into character_location values (0, 0, '15:24');
