-- Populate the true_id table


INSERT INTO true_id (first_name, last_name)
VALUES ("Selina", "Kyle"),
       ("Pamela", "Isley"),
       ("Harvey", "Dent"),
       ("Edward", "Nygma"),
       ("Jaina", "Hudson"),
       ("Harleen", "Quinzel"),
       ("Thomas", "Elliot"),
       ("Arnold", "Wesker"),
       ("Peyton", "Riley"),
       ("Unknown", "Unknown"),
       ("Cyrus", "Gold"),
       ("Roman", "Sionis"),
       ("Jeremiah", "Arkham"),
       ("Lonnie", "Machin"),
       ("Ulysses", "Armstrong"),
       ("Sam", "Young"),
       ("Oswald", "Cobblepot"),
       ("Jonathan", "Crane"),
       ("Jervis", "Tetch"),
       ("Kirk", "Langstrom"),
       ("Jason", "Todd"),
       ("Victor", "Fries"),
       ("Waylon", "Jones"),
       ("Garfield", "Lynns"),
       ("Ted", "Carson"),
       ("Basil", "Karlo"),
       ("Preston", "Payne"),
       ("Peter", "Malley"),
       ("Todd", "Russell"),
       ("Johnny", "Williams"),
       ("Arthur", "Brown"),
       ("Sondra", "Fuller"),
       ("Matt", "Hagen")
       ;


-- Populate villain table

INSERT INTO villain (pseudonym)
VALUES ("Catwoman"),
       ("Poison Ivy"),
       ("Two-Face"),
       ("Riddler"),
       ("White Rabbit"),
       ("Harley Quinn"),
       ("Hush"),
       ("Ventriloquist"),
       ("Joker"), ("Imperceptible Man"), ("Bane"),
       ("Solomon Grundy"),
       ("Black Mask"),
       ("Anarky"),
       ("Penguin"),
       ("Scarecrow"),
       ("Mad Hatter"),
       ("Man-Bat"),
       ("Robin"), ("Red Hood"),
       ("Mr. Freeze"),
       ("Killer Croc"),
       ("Clayface"),
       ("Lady Clay")
       ;

-- Abilities table

insert into special_abilities(name) values("Pyrokinesis"), ("Immune to Freezing"), ("Immune to Fire"),
       ("Pharmacology"), ("Duplication"), ("Clairvoyance"), ("Animal Hybrid"), ("Flight"), ("Enhanced Strength"), ("Enhanced Speed"),
       ("Mind Control"), ("Plant Manipulation"), ("Invisibility"), ("None"), ("Shapeshifting"), ("Impersonation"), ("Transmutation"), 
       ("Enhanced Intellect"), ("Combat"), ("Telepathy"), ("Telekinesis"), ("Magic"), ("Immune to Poison"), 
       ("Electricity"), ("Reanimation"), ("Teleportation"), ("Eidetic Memory"), ("Advanced Healing"), 
       ("Acrobatics"), ("Cyborg"), ("Superhuman Tracking");


-- Status table

insert into status(description) values("Dead"), ("Captured"), ("At Large"), ("Under Investigation");

-- Link True_Id to Status

INSERT INTO true_id_status (true_id, status_id)
VALUES ((SELECT id FROM true_id WHERE first_name = "Selina" AND last_name = "Kyle"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Pamela" AND last_name = "Isley"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harleen" AND last_name = "Quinzel"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Edward" AND last_name = "Nygma"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Thomas" AND last_name = "Elliot"),
              (SELECT id FROM status WHERE description = "Under Investigation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jaina" AND last_name = "Hudson"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harvey" AND last_name = "Dent"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Victor" AND last_name = "Fries"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jonathan" AND last_name = "Crane"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Cyrus" AND last_name = "Gold"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jervis" AND last_name = "Tetch"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sondra" AND last_name = "Fuller"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Oswald" AND last_name = "Cobblepot"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Kirk" AND last_name = "Langstrom"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arnold" AND last_name = "Wesker"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peyton" AND last_name = "Riley"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jason" AND last_name = "Todd"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Matt" AND last_name = "Hagen"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Basil" AND last_name = "Karlo"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Preston" AND last_name = "Payne"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peter" AND last_name = "Malley"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Todd" AND last_name = "Russell"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Johnny" AND last_name = "Williams"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arthur" AND last_name = "Brown"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jeremiah" AND last_name = "Arkham"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Roman" AND last_name = "Sionis"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Lonnie" AND last_name = "Machin"),
              (SELECT id FROM status WHERE description = ("Under Investigation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Ulysses" AND last_name = "Armstrong"),
              (SELECT id FROM status WHERE description = ("Dead")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sam" AND last_name = "Young"),
              (SELECT id FROM status WHERE description = ("Dead"));


-- Link True ID table to Villain pseudonym


INSERT INTO true_id_villain (true_id, villain_id)
VALUES ((SELECT id FROM true_id WHERE first_name = "Selina" AND last_name = "Kyle"),
              (SELECT id FROM villain WHERE pseudonym = "Catwoman")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Pamela" AND last_name = "Isley"),
              (SELECT id FROM villain WHERE pseudonym = "Poison Ivy")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harleen" AND last_name = "Quinzel"),
              (SELECT id FROM villain WHERE pseudonym = "Harley Quinn")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Unknown" AND last_name = "Unknown"),
              (SELECT id FROM villain WHERE pseudonym = "Joker")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Edward" AND last_name = "Nygma"),
              (SELECT id FROM villain WHERE pseudonym = "Riddler")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Thomas" AND last_name = "Elliot"),
              (SELECT id FROM villain WHERE pseudonym = "Hush")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jaina" AND last_name = "Hudson"),
              (SELECT id FROM villain WHERE pseudonym = "White Rabbit")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harvey" AND last_name = "Dent"),
              (SELECT id FROM villain WHERE pseudonym = "Two-Face")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Victor" AND last_name = "Fries"),
              (SELECT id FROM villain WHERE pseudonym = "Mr. Freeze")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jonathan" AND last_name = "Crane"),
              (SELECT id FROM villain WHERE pseudonym = "Scarecrow")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Unknown" AND last_name = "Unknown"),
              (SELECT id FROM villain WHERE pseudonym = ("Imperceptible Man")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Cyrus" AND last_name = "Gold")),
              (SELECT id FROM villain WHERE pseudonym = "Solomon Grundy")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jervis" AND last_name = "Tetch"),
              (SELECT id FROM villain WHERE pseudonym = "Mad Hatter")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sondra" AND last_name = "Fuller"),
              (SELECT id FROM villain WHERE pseudonym = "Lady Clay")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sondra" AND last_name = "Fuller"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Oswald" AND last_name = "Cobblepot"),
              (SELECT id FROM villain WHERE pseudonym = "Penguin")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Kirk" AND last_name = "Langstrom"),
              (SELECT id FROM villain WHERE pseudonym = "Man-Bat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arnold" AND last_name = "Wesker"),
              (SELECT id FROM villain WHERE pseudonym = "Ventriloquist")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peyton" AND last_name = "Riley"),
              (SELECT id FROM villain WHERE pseudonym = "Ventriloquist")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Unknown" AND last_name = "Unknown"),
              (SELECT id FROM villain WHERE pseudonym = ("Bane")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Unknown" AND last_name = "Unknown")),
              (SELECT id FROM villain WHERE pseudonym = ("Anarky")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jason" AND last_name = "Todd")),
              (SELECT id FROM villain WHERE pseudonym = "Robin")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jason" AND last_name = "Todd"),
              (SELECT id FROM villain WHERE pseudonym = "Red Hood")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Matt" AND last_name = "Hagen"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Basil" AND last_name = "Karlo"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Preston" AND last_name = "Payne"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peter" AND last_name = "Malley"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Todd" AND last_name = "Russell"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Johnny" AND last_name = "Williams"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arthur" AND last_name = "Brown"),
              (SELECT id FROM villain WHERE pseudonym = "Clayface")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jeremiah" AND last_name = "Arkham"),
              (SELECT id FROM villain WHERE pseudonym = "Black Mask")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Roman" AND last_name = "Sionis"),
              (SELECT id FROM villain WHERE pseudonym = "Black Mask")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Lonnie" AND last_name = "Machin"),
              (SELECT id FROM villain WHERE pseudonym = ("Anarky")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Ulysses" AND last_name = "Armstrong")),
              (SELECT id FROM villain WHERE pseudonym = ("Anarky")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sam" AND last_name = "Young")),
              (SELECT id FROM villain WHERE pseudonym = ("Anarky")));

-- Link Villain to Status

INSERT INTO villain_status (villain_id, status_id)
VALUES ((SELECT id FROM villain WHERE pseudonym = "Catwoman"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Poison Ivy"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Harley Quinn"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Riddler"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Hush"),
              (SELECT id FROM status WHERE description = "Under Investigation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "White Rabbit"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Two-Face"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Mr. Freeze"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Scarecrow"),
              (SELECT id FROM status WHERE description = "Captured")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Solomon Grundy"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Mad Hatter"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Lady Clay"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Penguin"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Man-Bat"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Ventriloquist"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Red Hood"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Robin"),
              (SELECT id FROM status WHERE description = "At Large")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Clayface"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Joker"),
              (SELECT id FROM status WHERE description = "Under Investigation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Bane"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Imperceptible Man"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Anarky"),
              (SELECT id FROM status WHERE description = "Dead")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Black Mask"),
              (SELECT id FROM status WHERE description = "Dead"));


-- Link Villain to Special Abilities

INSERT INTO villain_abilities (villain_id, ability_id)
VALUES ((SELECT id FROM villain WHERE pseudonym = "Catwoman"),
              (SELECT id FROM special_abilities WHERE name = "Acrobatics")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Poison Ivy"),
              (SELECT id FROM special_abilities WHERE name = "Mind Control")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Poison Ivy"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Poison")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Poison Ivy"),
              (SELECT id FROM special_abilities WHERE name = "Plant Manipulation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Harley Quinn"),
              (SELECT id FROM special_abilities WHERE name = "Acrobatics")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Riddler"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Intellect")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Hush"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "White Rabbit"),
              (SELECT id FROM special_abilities WHERE name = "Duplication")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "White Rabbit"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Speed")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "White Rabbit"),
              (SELECT id FROM special_abilities WHERE name = "Transmutation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Two-Face"),
              (SELECT id FROM special_abilities WHERE name = "None")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Mr. Freeze"),
              (SELECT id FROM special_abilities WHERE name = "Reanimation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Mr. Freeze"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Freezing")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Scarecrow"),
              (SELECT id FROM special_abilities WHERE name = "Pharmacology")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Scarecrow"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Poison")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Solomon Grundy"),
              (SELECT id FROM special_abilities WHERE name = "Reanimation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Mad Hatter"),
              (SELECT id FROM special_abilities WHERE name = "Mind Control")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Lady Clay"),
              (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Lady Clay"),
              (SELECT id FROM special_abilities WHERE name = "Impersonation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Penguin"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Man-Bat"),
              (SELECT id FROM special_abilities WHERE name = "Animal Hybrid")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Man-Bat"),
              (SELECT id FROM special_abilities WHERE name = "Flight")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Ventriloquist"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Red Hood"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Robin"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Clayface"),
              (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Clayface"),
              (SELECT id FROM special_abilities WHERE name = "Impersonation")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Joker"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Bane"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Strength")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Imperceptible Man"),
              (SELECT id FROM special_abilities WHERE name = "Invisibility")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Anarky"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Intellect")),
VALUES ((SELECT id FROM villain WHERE pseudonym = "Black Mask"),
              (SELECT id FROM special_abilities WHERE name = "Combat"));



-- Link True ID to Special Abilities

INSERT INTO true_id_abilities (true_id, ability_id)
VALUES ((SELECT id FROM true_id WHERE first_name = "Selina" AND last_name = "Kyle"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Pamela" AND last_name = "Isley"),
              (SELECT id FROM special_abilities WHERE name = "Mind Control")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Pamela" AND last_name = "Isley"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Poison")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Pamela" AND last_name = "Isley"),
              (SELECT id FROM special_abilities WHERE name = "Plant Manipulation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harleen" AND last_name = "Quinzel"),
              (SELECT id FROM special_abilities WHERE name = "Acrobatics")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Edward" AND last_name = "Nygma"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Intellect")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Thomas" AND last_name = "Elliot"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jaina" AND last_name = "Hudson"),
              (SELECT id FROM special_abilities WHERE name = "Duplication")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jaina" AND last_name = "Hudson"),
              (SELECT id FROM special_abilities WHERE name = "Transmutation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jaina" AND last_name = "Hudson"),
              (SELECT id FROM special_abilities WHERE name = "Enhanced Speed")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Harvey" AND last_name = "Dent"),
              (SELECT id FROM special_abilities WHERE name = "None")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Victor" AND last_name = "Fries"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Freezing")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Victor" AND last_name = "Fries"),
              (SELECT id FROM special_abilities WHERE name = "Reanimation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jonathan" AND last_name = "Crane"),
              (SELECT id FROM special_abilities WHERE name = "Immune to Poison")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jonathan" AND last_name = "Crane"),
              (SELECT id FROM special_abilities WHERE name = "Pharmacology")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Cyrus" AND last_name = "Gold"),
              (SELECT id FROM special_abilities WHERE name = "Reanimation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jervis" AND last_name = "Tetch"),
              (SELECT id FROM special_abilities WHERE name = "Mind Control")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sondra" AND last_name = "Fuller"),
              (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Oswald" AND last_name = "Cobblepot"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Kirk" AND last_name = "Langstrom"),
              (SELECT id FROM special_abilities WHERE name = "Flight")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Kirk" AND last_name = "Langstrom"),
              (SELECT id FROM special_abilities WHERE name = "Animal Hybrid")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arnold" AND last_name = "Wesker"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peyton" AND last_name = "Riley"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jason" AND last_name = "Todd"),
              (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Matt" AND last_name = "Hagen"),
              (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Matt" AND last_name = "Hagen"),
              (SELECT id FROM special_abilities WHERE name = "Impersonation")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Basil" AND last_name = "Karlo"),
           (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Preston" AND last_name = "Payne"),
                  (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Peter" AND last_name = "Malley"),
                  (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Todd" AND last_name = "Russell"),
      (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Johnny" AND last_name = "Williams"),
                   (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Arthur" AND last_name = "Brown"),
               (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Jeremiah" AND last_name = "Arkham"),
                  (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Roman" AND last_name = "Sionis"),
               (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Lonnie" AND last_name = "Machin"),
                   (SELECT id FROM special_abilities WHERE name = "Shapeshifting")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Ulysses" AND last_name = "Armstrong"),
                  (SELECT id FROM special_abilities WHERE name = "Combat")),
VALUES ((SELECT id FROM true_id WHERE first_name = "Sam" AND last_name = "Young"),
                    (SELECT id FROM special_abilities WHERE name = "Combat"));

