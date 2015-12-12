USE Meetup_Registration_Database;

INSERT INTO meetups
VALUES(1, '2015.11.26 10:00:00', 'Miskolc', 'Python development', 'Presentation');
INSERT INTO meetups
VALUES(2, '2015.11.30 9:00:00', 'Szerencs', 'MySQL best practices', 'Database management');
INSERT INTO meetups
VALUES(3, '2015.12.03 11:00:00', 'Eger', 'Web developement', 'Presentation');
INSERT INTO meetups
VALUES(4, '2015.12.10 8:00:00', 'Miskolc', 'Meetup', '-');
INSERT INTO meetups
VALUES(5, '2016.01.11 9:30:00', 'Miskolc', 'Overview of the previous year', 'Statistics presentation');

INSERT INTO users
VALUES(1, 'Jhon', '1990.01.01 10:00:00', 'Hi, Im Jhon!', 'No avatar', 'jhon90@gmail.com');
INSERT INTO users
VALUES(2, 'George', '1982.05.20 9:00:00', 'Im George!', 'No avatar', 'g.boss28@gmail.com');
INSERT INTO users(id, Name, Birthdate, Avatar, Email)
VALUES(3, 'Jill', '1987.07.11 22:00:00', 'No avatar', 'jill87@gmail.com');
INSERT INTO users(id, Name, Birthdate, Avatar, Email)
VALUES(4, 'Matt', '1991.08.23 23:00:00', 'No avatar', 'matt08@gmail.com');
INSERT INTO users
VALUES(5, 'Peter', '1992.11.16 07:00:00', 'Im awesome!', 'No avatar', 'peter116@gmail.com');

INSERT INTO statuses
VALUES(1, 'Going');
INSERT INTO statuses
VALUES(2, 'Not going');
INSERT INTO statuses
VALUES(3, 'Presenting');
INSERT INTO statuses
VALUES(4, 'Going');
INSERT INTO statuses
VALUES(5, 'Tentative');

INSERT INTO meetup_registrations(StatusId, MeetupId, UserId)
VALUES(1, 1, 1);
INSERT INTO meetup_registrations(StatusId, MeetupId, UserId)
VALUES(2, 2, 2);
INSERT INTO meetup_registrations(StatusId, MeetupId, UserId)
VALUES(3, 3, 3);
INSERT INTO meetup_registrations(StatusId, MeetupId, UserId)
VALUES(4, 4, 4);
INSERT INTO meetup_registrations(StatusId, MeetupId, UserId)
VALUES(5, 5, 5);