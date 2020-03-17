-- PROGRESSION - 1


-- 1.Create table city

CREATE TABLE city(
id NUMBER(11),
name VARCHAR(50)
);



-- 2. **Create table referee**

CREATE TABLE referee(
id NUMBER(11),
name VARCHAR(50)
);


-- 3. **Create table innings**

CREATE TABLE innings(
id NUMBER(11),
innings_number NUMBER(11)
);

-- 4. **Create table extra_type**
CREATE TABLE extra_type(
id NUMBER(11),
name VARCHAR(50)

);
-- 5. **Create table skill**
CREATE TABLE skill(
id NUMBER(11),
name VARCHAR(50)
);
-- 6. **Create table team**
CREATE TABLE team(
id NUMBER(11),
name VARCHAR(50),
coach VARCHAR(50),
home_city NUMBER(11),
captain NUMBER(11)
);

-- 7. **Create table player**
CREATE TABLE player(
id NUMBER(11),
name VARCHAR(50),
country VARCHAR(50),
skill_id NUMBER(11),
team_id NUMBER(11)
);

-- 8. **Create table venue**
CREATE TABLE venue(
id NUMBER(11),
stadium_name VARCHAR(50),
city_id NUMBER(11)
);

-- 9. **Create table event**
CREATE TABLE event(
id NUMBER(11),
innings_id NUMBER(11),
events_no NUMBER(11),
raide_id NUMBER(11),
raider_points NUMBER(11),
defending_points NUMBER(11),
clock_in_seconds NUMBER(11),
team_one_score NUMBER(11),
team_two_score NUMBER(11)
);

-- 10. **Create table extra_event**
CREATE TABLE extra_event(
id NUMBER(11),
event_id NUMBER(11),
extra_type_id NUMBER(11),
points NUMBER(11),
scoring_team_id NUMBER(11)
);

-- 11. **Create table outcome**
CREATE TABLE outcome(
id NUMBER(11),
status VARCHAR(100),
winner_team_id NUMBER(11),
score NUMBER(11),
player_of_match NUMBER(11)
);
-- 12. **Create table game**
CREATE TABLE game(
id NUMBER(11),
game_date DATE,
team_id_1 NUMBER(11),
team_id_2 NUMBER(11),
venue_id NUMBER(11),
outcome_id NUMBER(11),
referee_id_1 NUMBER(11),
referee_id_2 NUMBER(11),
first_innings_id NUMBER(11),
second_innings_id NUMBER(11)
);
-- 13. **Drop table city**
DROP TABLE city;

-- 14. **Drop table innings**
DROP TABLE innings;

-- 15. **Drop table skill**
DROP TABLE skill;

-- 16. **Drop table extra_type**
DROP TABLE extra_type;
