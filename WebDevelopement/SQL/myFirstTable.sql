CREATE TABLE friends (id INTEGER, name STRING, birthday string);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', 'May 19th, 1993');

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Alex', 'Dont remember');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Ben', 'Dont remember');

INSERT INTO friends (id, name, birthday)
VALUES (4, 'Nico', 'Dont remember');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends ADD COLUMN
email TEXT;

UPDATE friends
SET email =
'jdoe@example.com'
WHERE id = 1;

UPDATE friends
SET email =
'Those losers dont have one'
WHERE id = 2;

UPDATE friends
SET email =
'Those losers dont have one'
WHERE id = 3;

UPDATE friends
SET email =
'Those losers dont have one'
WHERE id = 4;

DELETE FROM friends WHERE id = 1 ;


SELECT * FROM friends;









