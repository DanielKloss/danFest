INSERT INTO attendee (id, first_name, last_name) VALUES (1, 'Dan', 'Kloss');
INSERT INTO attendee (id, first_name, last_name) VALUES (2, 'Georgie', 'Clarke');
INSERT INTO attendee (id, first_name, last_name) VALUES (3, 'Jack', 'Jackson');
INSERT INTO attendee (id, first_name, last_name) VALUES (4, 'Rob', 'Slade');
INSERT INTO attendee (id, first_name, last_name) VALUES (5, 'Mark', 'Bridger');
INSERT INTO attendee (id, first_name, last_name) VALUES (6, 'David', 'Gluckstein');
INSERT INTO attendee (id, first_name, last_name) VALUES (7, 'Charlie', 'Broadbent');
INSERT INTO attendee (id, first_name, last_name) VALUES (8, 'Matt', 'Hurst');
INSERT INTO attendee (id, first_name, last_name) VALUES (9, 'Jonny', 'Dauncey');
INSERT INTO attendee (id, first_name, last_name) VALUES (10, 'Kate', 'Dauncey');
INSERT INTO attendee (id, first_name, last_name) VALUES (13, 'Joe', 'Walker');
INSERT INTO attendee (id, first_name, last_name) VALUES (20, 'Jack', 'Potter');
INSERT INTO attendee (id, first_name, last_name) VALUES (21, 'Sophia', 'Potter');
INSERT INTO attendee (id, first_name, last_name) VALUES (22, 'Laura', 'White');
INSERT INTO attendee (id, first_name, last_name) VALUES (23, 'Phoebe', 'Rudguard');
INSERT INTO attendee (id, first_name, last_name) VALUES (24, 'Julia', 'Mitchell');
INSERT INTO attendee (id, first_name, last_name) VALUES (25, 'Rob', 'Blackman');
INSERT INTO attendee (id, first_name, last_name) VALUES (32, 'Nom', 'Bridger');
INSERT INTO attendee (id, first_name, last_name) VALUES (33, 'Steve', 'Kloss');
INSERT INTO attendee (id, first_name, last_name) VALUES (34, 'James', 'Kloss');
INSERT INTO attendee (id, first_name, last_name) VALUES (35, 'Adam', 'Stokes');
INSERT INTO attendee (id, first_name, last_name) VALUES (36, 'Ben', 'Tolputt');
INSERT INTO attendee (id, first_name, last_name) VALUES (37, 'Tasha', 'Howourth-Brett');
INSERT INTO attendee (id, first_name, last_name) VALUES (38, 'Tom', 'Howourth-Brett');
INSERT INTO attendee (id, first_name, last_name) VALUES (39, 'Nat', 'Brown');
INSERT INTO attendee (id, first_name, last_name) VALUES (40, 'Dom', 'Brown');
INSERT INTO attendee (id, first_name, last_name) VALUES (41, 'Thomas', 'Hacker');
INSERT INTO attendee (id, first_name, last_name) VALUES (42, 'Nat', 'Hacker');
INSERT INTO attendee (id, first_name, last_name) VALUES (43, 'Kelly', 'Allum');
INSERT INTO attendee (id, first_name, last_name) VALUES (44, 'Charlotte', 'Smith');
INSERT INTO attendee (id, first_name, last_name) VALUES (45, 'Rachel', 'Humpreys');
INSERT INTO attendee (id, first_name, last_name) VALUES (46, 'Paul', 'Hardy');
INSERT INTO attendee (id, first_name, last_name) VALUES (47, 'Celine', 'Parmentier');

INSERT INTO location (id, name) VALUES (1, 'Birmingham');
INSERT INTO location (id, name) VALUES (2, 'Courchevel');
INSERT INTO location (id, name) VALUES (3, 'Arabba');
INSERT INTO location (id, name) VALUES (4, 'London');

INSERT INTO subLocation (id, name) VALUES (1, 'Pub / Bar'); /*1*/
INSERT INTO subLocation (id, name) VALUES (2, 'Home'); /*2*/
INSERT INTO subLocation (id, name) VALUES (3, 'Themed Activity'); /*3*/
INSERT INTO subLocation (id, name) VALUES (4, 'Ski Resort'); /*4*/
INSERT INTO subLocation (id, name) VALUES (5, 'Restaurant'); /*5*/
INSERT INTO subLocation (id, name) VALUES (6, 'Cinema'); /*6*/
INSERT INTO subLocation (id, name) VALUES (7, 'Virtual'); /*7*/

INSERT INTO festival (id, title, year, activities, location_id) VALUES (1, 'The one where they were in Birmingham', 2010, 'Fab ''n'' Fresh', 1); /*1*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (2, 'The one where they went back to Courchevel', 2011, 'Skiing', 2); /*2*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (3, 'The one where they were in Arabba', 2012, 'Skiing', 3); /*3*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (4, 'The one where Mark Mooned the Cab Driver', 2013, 'Bavarian Beer House', 4); /*4*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (5, 'The one where Nom Encouraged Georgie to TC on the Table', 2014, 'Board Game Cafe, Escape Room, Turkish Meal and Pub', 4); /*5*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (6, 'The one with the new Star Wars Film', 2015, 'Star Wars: the Force Awakens, Pizza Meal and Pub', 4); /*6*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (7, 'The one where Dan threw up a lot', 2016, 'Bavarian Beer House', 4); /*7*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (8, 'The one where Nom fell asleep on the sofa', 2017, 'Quiz, dinner and games at Dan''s house', 4); /*8*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (9, 'The one where they Played Darts', 2018, 'Pub Dinner, Quiz by Nom and Flight Club', 4); /*9*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (10, 'The one with the Inner Sanctum', 2019, 'Pizza and games at Dan''s', 4); /*10*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (11, 'The one that was virtual', 2020, 'Virtual games: Only Connect, Jackbox and Among Us', 4); /*11*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (12, 'The one that was virtual reality', 2021, 'Navrtar Virtual Reality', 4); /*12*/
INSERT INTO festival (id, title, year, activities, location_id) VALUES (13, 'The one where Thomas didn''t get a badge', 2022, 'Crazier Golf and Brewdog', 4); /*13*/

INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (1,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (1,2);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (2,4);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (3,4);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (4,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (5,3);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (5,5);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (5,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (6,6);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (6,5);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (6,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (7,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (8,2);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (9,1);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (9,3);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (10,2);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (11,7);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (12,3);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (13,3);
INSERT INTO festival_subLocation (festival_id, subLocation_id) VALUES (13,1);

INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,3);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,4);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,6);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,7);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (1,8);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,9);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,10);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (2,13);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,20);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,21);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,22);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,23);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,24);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (3,25);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,9);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,10);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (4,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,3);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,33);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,35);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,8);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,9);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,10);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (5,6);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,9);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,10);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,36);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (6,6);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,37);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,38);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,39);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,40);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,6);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,3);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,8);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (7,43);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,8);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,13);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,37);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,38);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,39);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (8,40);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,37);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,38);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,3);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,44);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (9,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,37);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,38);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (10,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,37);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,38);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,3);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,44);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,5);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (11,32);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,33);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (12,45);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,1);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,2);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,34);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,41);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,42);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,45);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,46);
INSERT INTO festival_attendee (festival_id, attendee_id) VALUES (13,47);

INSERT INTO ticket2022 (reference, attendees, attending) VALUES ('3milybenj1', 'Georgie', 'Pending');
INSERT INTO ticket2022 (reference, attendees, attending) VALUES ('3ll3n', 'Nat and Thomas', 'Pending');
INSERT INTO ticket2022 (reference, attendees, attending) VALUES ('3ngag3d', 'Matt and Jo', 'Pending');
INSERT INTO ticket2022 (reference, attendees, attending) VALUES ('c4m3lup', 'James and Rachel', 'Pending');
INSERT INTO ticket2022 (reference, attendees, attending) VALUES ('m4yfi3ld', 'Paul and Celine', 'Pending');

INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('runner', 'Georgie', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('newBaby', 'Nat and Thomas', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('delhi', 'Matt and Jo', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('bettyluna', 'James and Rachel', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('liasons', 'Charlotte and Diego', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('daisy', 'Mark and Nom', 'Pending');
INSERT INTO ticket2023 (reference, attendees, attending) VALUES ('sywncombe', 'Paul and Celine', 'Pending');