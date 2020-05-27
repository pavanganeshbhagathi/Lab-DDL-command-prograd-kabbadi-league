-- PROGRESSION - 1


-- 1. **Create table city**
create table city(id int not null AUTO_INCREMENT,name varchar(50),primary key(id));
-- 2. **Create table referee**
create table referee(referee_id  int not null auto_increment,referee_name varchar(100),primary key(referee_id));
-- 3. **Create table innings**
create table innings(innings_id  int not null auto_increment,innings_number int,primary key(innings_id));
-- 4. **Create table extra_type**
create table extra_type(extra_type_id  int not null auto_increment,extra_type_name varchar(50),primary key(extra_type_id));
-- 5. **Create table skill**
CREATE TABLE skill(skill_id bigint not null auto_increment,skill_name VARCHAR(50),primary key(skill_id));
-- 6. **Create table team**
   create table team (
    id  int auto_increment not null,
    name varchar(120),
	coach varchar(120),
    home_city int not null,
	captain int,
    foreign key (home_city) references city(city_id),
    primary key (id)
  ) ENGINE = InnoDB;
-- 7. **Create table player**

 create table player (
    player_id  int auto_increment not null,
    player_name varchar(50),
	player_country varchar(120),
    skill_id1 bigint not null ,
	team_id int not null,
    foreign key (team_id) references team(id),
	foreign key (skill_id1) references skill(skill_id),
    primary key (player_id)
  ) ENGINE = InnoDB;


-- 8. **Create table venue**
 create table venue (
    venue_id  int auto_increment not null,
    stadium_name varchar(50),
	city_id1 int not null,
	foreign key (city_id1) references city(id),
	primary key (venue_id)
  ) ENGINE = InnoDB;

-- 9. **Create table event**
CREATE TABLE event(
event_id int not null auto_increment,
innings_id int not null,
events_no int,
raide_id int not null,
raider_points int,
defending_points int,
clock_in_seconds int,
team_one_score int,
team_two_score int,
foreign key (innings_id) references innings(innings_id),
foreign key (raide_id) references player(player_id),
primary key(event_id)
);

-- 10. **Create table extra_event**
CREATE TABLE extra_event(
extra_event_id int not null auto_increment,
event_id int not null,
extra_type_id int not null,
points int,
scoring_team_id int not null,
foreign key (event_id) references team(id),
foreign key (extra_type_id) references extra_type(extra_type_id),
foreign key (scoring_team_id) references event(event_id),
primary key(extra_event_id)
);
-- 11. **Create table outcome**
CREATE TABLE outcome(
outcome_id int not null auto_increment,
outcome_status VARCHAR(100),
winner_team_id int not null,
score int,
player_of_match int not null,
foreign key (winner_team_id) references team(id),
foreign key (player_of_match) references player(player_id),
primary key (outcome_id)
);
-- 12. **Create table game**
CREATE TABLE game(
game_id int,
game_date DATE,
team_id_1 int not null,
team_id_2 int not null,
venue_id int not null,
outcome_id int not null,
referee_id_1 int not null,
referee_id_2 int not null,
first_innings_id int not null,
second_innings_id int not null,
foreign key (team_id_1) references team(id),
foreign key (team_id_2) references team(id),
foreign key (venue_id) references venue(venue_id),
foreign key (outcome_id) references outcome(outcome_id),
foreign key (referee_id_1) references referee(referee_id),
foreign key (referee_id_2) references referee(referee_id),
foreign key (first_innings_id) references innings(innings_id),
foreign key (second_innings_id ) references innings(innings_id),
primary key (game_id)
);

-- 13. **Drop table city**
ALTER TABLE team
	DROP FOREIGN KEY team_ibfk_1;
ALTER TABLE team 
    DROP COLUMN home_city  //not needed just checking column deleted or not
ALTER TABLE venue
	DROP FOREIGN KEY venue_ibfk_1;
drop table city;

-- 14. **Drop table innings**
ALTER TABLE event
	DROP FOREIGN KEY event_ibfk_1;
ALTER TABLE game
	DROP FOREIGN KEY game_ibfk_7;
ALTER TABLE game
	DROP FOREIGN KEY game_ibfk_8;  /these all are  Constaright im not decelre in above code please do that
drop table innings;
-- 15. **Drop table skill**
ALTER TABLE player
	DROP FOREIGN KEY player_ibfk_2;
	drop table skill

-- 16. **Drop table extra_type**
ALTER TABLE extra_event
	DROP FOREIGN KEY extra_event_ibfk_2; 
	drop table extra_type;