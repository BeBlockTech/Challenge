CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);

INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 21);

SELECT * FROM celebs;

INSERT INTO celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 33);

INSERT INTO celebs (id, name, age)
VALUES (3, 'Jeremy Lin', 33);

INSERT INTO celebs (id, name, age)
VALUES (4, 'Taylor Swift', 26);

UPDATE celbs
SET age = 22
WHERE id = 1;

ALTER TABLE  celebs ADD COLUMN 
twitter_handle TEXT;

SELECT name FROM celebs;

UPDATE celebs
SET twitter_handle =
'@taylorswift13'
WHERE id = 4;

DELETE FROM celebs WHERE
twitter_handle IS NULL;

SELECT * FROM celebs;

CREATE TABLE awards (
  id INTEGER PRIMARY KEY,
  recipient TEXT NOT NULL,
  award_name TEXT DEFAULT "Grammy");

Generalizations
Congratulations! You've learned six commands commonly used to manage data stored in a relational database. What can we generalize so far?

SQL is a programming language designed to manipulate and manage data stored in relational databases.

A relational database is a database that organizes information into one or more tables.
A table is a collection of data organized into rows and columns.
A statement is a string of characters that the database recognizes as a valid command.

CREATE TABLE creates a new table.
INSERT INTO adds a new row to a table.
SELECT queries data from a table.
UPDATE edits a row in a table.
ALTER TABLE changes an existing table.
DELETE FROM deletes rows from a table.