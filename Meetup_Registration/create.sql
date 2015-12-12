CREATE DATABASE Meetup_Registration_Database;
USE Meetup_Registration_Database;

CREATE TABLE Meetups
(
id INTEGER PRIMARY KEY NOT NULL,
Start DATETIME NOT NULL,
Location VARCHAR(150) NOT NULL,
Topic VARCHAR(150) NOT NULL,
Description VARCHAR(1000) NOT NULL
);

CREATE TABLE Statuses
(
id INTEGER PRIMARY KEY NOT NULL,
Value VARCHAR(50) NOT NULL
);

CREATE TABLE Users
(
id INTEGER PRIMARY KEY NOT NULL,
Name VARCHAR(100) NOT NULL,
Birthdate DATETIME NOT NULL,
Introduction VARCHAR(500),
Avatar VARCHAR(1000),
Email VARCHAR(150)
);

CREATE TABLE Meetup_Registrations
(
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
StatusId INTEGER NOT NULL, FOREIGN KEY (StatusId) REFERENCES Statuses(id) ON DELETE CASCADE,
MeetupId INTEGER NOT NULL, FOREIGN KEY (MeetupId) REFERENCES Meetups(id) ON DELETE CASCADE,
UserId INTEGER NOT NULL, FOREIGN KEY (UserId) REFERENCES Users(id) ON DELETE CASCADE
);
