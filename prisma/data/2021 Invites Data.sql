CREATE TABLE invites2021(invite2021Id int, attendeeId int, invitationCode text, attending text, zombies boolean, PRIMARY KEY(invite2021Id), FOREIGN KEY(attendeeId) REFERENCES attendees(attendeeId));

INSERT INTO invites2021 VALUES(1, 34, "5tard3w", "No Response", true);
INSERT INTO invites2021 VALUES(2, 8, "fr33dy_adu", "No Response", true);
INSERT INTO invites2021 VALUES(3, 5, "h0ck3y", "No Response", true);
INSERT INTO invites2021 VALUES(4, 41, "lil-y3ll", "No Response", true);