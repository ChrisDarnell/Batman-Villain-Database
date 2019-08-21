Rogues Gallery of Villains


Outline
Our database project contains information about the Rogue’s Gallery of Villains from the Batman series of comic books. Ideally something that would be used by Arkham Asylum — the grim psychiatric facility where many of Batman’s greatest foes are imprisoned — this database links the villain’s notorious pseudonym (such as Catwoman or The Joker) with their true identity, if it is known. It also tracks what special abilities they have, if any, and their status: whether they are captured, deceased, or at large. Finally, the database stores the first and last name and date of birth of the artist who created the villain.  	We thought this would make a rich topic for our project because of Batman’s lengthy canon, which has led to many twisted relationships that a smart database would reasonably be able to track. Villains get captured and escape with frequency, are widely presumed dead and then reappear alive later. Sometimes many individuals have adopted the mantle of a single villainous moniker; sometimes one person has tried out several villainous pseudonyms for Gotham City to fear. 	  	As a result, we thought this project would present many opportunities to demonstrate efficient database techniques. 
Database Outline in Words
Table Entities
The database tracks five entities: True Identity, Villain Identity, Status, Special Abilities, and Creator 

True Identity:  Holds a first and last name, if it is known. Also assigns an ID, which is the primary key. First and last name also form an aggregate key since the writers would not duplicate a character name.

Villain Identity: Has attributes of a Pseudonym and a Villain ID, which is the primary key. Pseudonym is also a unique key because writers will not duplicate a villain name.

Status: Has attributes of a Status Description (captured, dead, etc…) and a Status ID, which is the primary key. 

Special Abilities:  Has attributes of Special Ability name and description and a Special Ability ID, which is the primary key. 

Creator: Has attributes of first name, last name, date of birth, and id, which is the primary key. 

Table Relationships

True Identity and Villain: Is a many to many relationship. A person can take various villain forms. Conversely, a villain role may be assumed by several people. Because this is a database only for villains, True Identity is in total participation with Villain, and vice versa. 

Status and True Identity: One to many. A person has exactly one status (dead, imprisoned, etc.), but zero or more people can be imprisoned. True Identity has total participation with status.

True Id and Special Abilities: Many to many. A person can have zero or more special abilities. Special abilities can be used by zero or more people.

Villain and Creator: Many to Many. A villain must have at least one creator, and a creator must have created at least one villain. Thus Villain and Creator are in total participation with each other.

ER Diagram  
Schema
 
Table Creation Queries
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `true_id`;
DROP TABLE IF EXISTS `villain`;
DROP TABLE IF EXISTS `special_abilities`;
DROP TABLE IF EXISTS `true_id_villain`;
DROP TABLE IF EXISTS `true_id_abilities`;
DROP TABLE IF EXISTS `status`;
DROP TABLE IF EXISTS `creator`;
DROP TABLE IF EXISTS `creator_villain`;



-- create table true_identity
CREATE TABLE true_id (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(255) not null,
  last_name VARCHAR(255),
  status_id int(11) not null,
  foreign key (status_id) references `status` (id),
  unique key(first_name,last_name)
  )
  ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  -- create table villain
CREATE TABLE villain (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  pseudonym VARCHAR(255) NOT NULL,
  creator_id INT(11),
  foreign key (creator_id) REFERENCES `creator` (id),
  unique key(pseudonym)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
-- create table abilities
CREATE TABLE special_abilities (
  id INT PRIMARY KEY auto_increment,
  name VARCHAR(255) NULL,
  definition VARCHAR(255) NULL, 
  unique key(name, definition)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table true_id_villain
CREATE TABLE true_id_villain(
    true_id int(11) not null,
    villain_id int(11) not null,
    primary key (villain_id, true_id),
    foreign key (villain_id) references `villain` (id) on delete cascade,
    foreign key (true_id) references `true_id` (id) on delete cascade
    )
    Engine = innodb;

CREATE TABLE true_id_abilities (
  ability_id int(11) not null,
  true_id int(11) not null,
  primary key (ability_id, true_id),
  foreign key (ability_id) references `special_abilities` (id),  
  foreign key (true_id) references `true_id` (id) on delete cascade 
  ) engine = innodb;
  
  
 -- create table status
CREATE TABLE status (
  id INT(11) NOT NULL AUTO_INCREMENT,
  description varchar(255),
  PRIMARY KEY (id)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
CREATE TABLE creator_villain(
  creator_id INT(11) NOT NULL,
  villain_id INT(11) NOT NULL,
  primary key (creator_id, villain_id),
  foreign key (creator_id) references `creator` (id),
  foreign key (villain_id) references `villain` (id)
  ) ENGINE=INNODB;

CREATE TABLE creator (
  id INT(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255),
  last_name varchar(255),
  dob date,
  PRIMARY KEY (id)
  )ENGINE=INNODB;
  
SET foreign_key_checks = 1;
 
General Use Queries
addVillain.php
//To add new character
INSERT INTO true_id(first_name, last_name, status_id) VALUES([firstName], [lastName], [id])

//Add character to true_id_villain for many-to-many relationship
INSERT INTO true_id_villain(true_id,villain_id) VALUES([trueID],[villainID])

//Add character to true_id_abilities for many-to-many relationship
INSERT INTO true_id_abilities(true_id, ability_id) VALUES([trueID, abilityID)

deleteVillain.php
//Delete a true id from the database. Note other tables were updated via ON DELETE //CASCADE (see table creation queries section)
DELETE FROM true_id WHERE id = [trueID]

index.php
//Retrieve table names from database to populate a dropdown
SHOW TABLES

// Used to populate dropdown with current characters in database
SELECT id, first_name, last_name FROM true_id

// Used to populate a dropdown for our search functionality
SELECT id, description FROM status

//Used in our add character functionality to populate a dropdown of villains from which the user //can choose to associate the character with
SELECT id, pseudonym FROM villain