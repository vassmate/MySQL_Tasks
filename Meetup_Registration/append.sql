USE Meetup_Registration_Database;
ALTER TABLE users ADD COLUMN Phone_number VARCHAR(11);

UPDATE users SET Phone_number = '06305556666' WHERE id = 1;
UPDATE users SET Phone_number = '06701237654' WHERE id = 3;
UPDATE users SET Phone_number = '06203219876' WHERE id = 5;