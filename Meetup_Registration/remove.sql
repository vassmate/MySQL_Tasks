USE meetup_registration_database;
DELETE FROM  users WHERE Introduction IS NULL;
DELETE FROM meetups WHERE Start < '2015.11.27';
