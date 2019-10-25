-- ## Queries

-- To receive full credit for this assignment, complete questions 1 through 7. Queries after that are a bonus!
-- Use SQL
-- queries to complete the following tasks. Copy these queries, and place them onto a file called "n64.sql" or similar
-- (it MUST
-- end in .sql). Upload this file to github, and hand it in via Google Classroom

-- 1. Select the title of all games
SELECT title
FROM games;


-- 2. Show all the years in the database.
SELECT year
FROM games;


-- 3. Show the title of each game made by 'Rare'.
SELECT title
FROM games
WHERE developers = 'Rare';


-- 4. Select all games that were made before 1998.
SELECT *
FROM games
WHERE year = 1998;


-- 5. Find the average release year of all games made by 'Nintendo EAD'
SELECT AVG(year)
FROM games
WHERE developers = 'Nintendo EAD';


-- 6) Show the developer names of each game, in alphabetical order.
SELECT developers
FROM games
ORDER BY developers ASC;


-- 7) Show the titles of games not made by 'Nintendo EAD'.
SELECT title
FROM games
WHERE developers != 'Nintendo EAD';


-- 8) Add the the game 'F-Zero X', released in 1998, made by 'Nintendo EAD', and with the genre 'Racing'.
INSERT INTO Games
    (title, year, developers, genre)
VALUES('F-Zero X', 1998, 'Nintendo EAD', 'Racing');


-- 9) Show all the game titles in descending order of their release year.
SELECT title
FROM games
ORDER BY title DESC;


-- 10) Remove all games not made by 'Hudson Soft'.
DELETE FROM games WHERE developers = 'Hudson Soft';


-- 11) Show the average release year for games that were made by Rare or have the title `Tony Hawk''s Pro Skater`
-- in order of their title
SELECT AVG(year)
FROM games
WHERE developers = 'Rare' OR games.title = 'Tony Hawk''s Pro Skater'
GROUP BY games.title
;


-- 12) Show the id and title and genre of all games that were
-- either:

-- Made before 1997,

-- Made by Hal Laboratory,

-- Or, have the genre Platforming AND are made by Rare.

SELECT id, title, genre
FROM games
WHERE year = 1997 AND developers = 'Hal Laboratory' OR genre = 'Platforming' AND games.developers = 'Rare';