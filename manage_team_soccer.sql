drop database if exists manage_team_soccer;
create database if not exists manage_team_soccer;
use manage_team_soccer;
create table coach(
id int primary key auto_increment,
name varchar(50),
birthday date
);
create table team(
id int primary key auto_increment,
name varchar(50)
);
create table positions(
id int primary key auto_increment,
name_position varchar(50)
);
create table player(
id int primary key auto_increment,
name varchar(50),
birthday date,
id_team int,
id_position int,
foreign key (id_team) references team(id),
foreign key (id_position) references positions(id)
);
create table matchs(
id int primary key auto_increment,
match_date date
);
create table player_match(
id_match int,
id_player int,
foreign key (id_match) references matchs(id),
foreign key (id_player) references player(id),
primary key (id_match,id_player)
);

