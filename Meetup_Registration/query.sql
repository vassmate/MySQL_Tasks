USE Meetup_Registration_Database;
SELECT * FROM users WHERE Introduction IS NOT NULL;

SELECT * FROM meetups WHERE Start > '2015.11.27';

SELECT meetup_registrations.id, users.Name, users.Birthdate, users.Introduction, users.Avatar, users.Email,
statuses.Value, meetups.Start, meetups.Location, meetups.Topic, meetups.Description
FROM meetup_registrations
JOIN users ON meetup_registrations.UserId = users.id
JOIN statuses ON meetup_registrations.StatusId = statuses.id
JOIN meetups ON meetup_registrations.MeetupId = meetups.id
WHERE users.id = 2;
