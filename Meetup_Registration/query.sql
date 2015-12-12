SELECT * FROM users WHERE Introduction IS NOT NULL;
SELECT * FROM meetups WHERE Start > '2015.11.27';
SELECT users.*, meetups.Start, meetups.Location, meetups.Topic, meetups.Description, statuses.Value 
FROM users JOIN meetups ON meetups.id = users.id
JOIN statuses ON statuses.id = users.id WHERE users.id = 1;