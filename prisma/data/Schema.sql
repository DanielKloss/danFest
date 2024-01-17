DROP TABLE festivalAttendees;
DROP TABLE attendees;
DROP TABLE festivals;
DROP TABLE locations;

CREATE TABLE locations (
locationId int, 
name text, 
PRIMARY KEY(locationId)
);

CREATE TABLE festivals (
festivalId int,
year int,
title text,
activities text,
locationId int,
PRIMARY KEY(festivalId),
FOREIGN KEY(locationId) REFERENCES locations(locationId) 
);

CREATE TABLE attendees (
attendeeId int, 
name text, 
PRIMARY KEY(attendeeId)
);

CREATE TABLE festivalAttendees (
festivalId int,
attendeeId int,
milesTravelled int,
PRIMARY KEY(festivalId, attendeeId),
FOREIGN KEY(festivalId) REFERENCES festivals(festivalId),
FOREIGN KEY(attendeeId) REFERENCES attendees(attendeeId)
);