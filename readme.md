![](http://i.giphy.com/KMrye8vZpv6py.gif)

# Exercise - SQL 64

## Setup

If you are using a Mac, you can use the terminal command `createdb n64` to create a database, and then use command `psql -d n64` to enter the database, and you can continue this assignment from there.

If you are using a PC, use the SQL shell, and enter the command `CREATE DATABASE n64;` to create a database, then use command `\c n64` to enter the database, and you can continue this assignment from there.

Take the following schema for an N64 SQL database

```SQL
 CREATE TABLE Games (
   id SERIAL PRIMARY KEY,
   title VARCHAR (50) NOT NULL,
   year INTEGER NOT NULL,
   developers VARCHAR (50),
   genre VARCHAR (50)
 );
```

Once you do that, you should be able to enter the following lines one by one

```SQL
INSERT INTO Games(title, year, developers, genre) VALUES('The Legend of Zelda: The Ocarina of Time', 1998, 'Nintendo EAD', 'Action-Adventure');
INSERT INTO Games(title, year, developers, genre) VALUES('Super Smash Bros.', 1999, 'Hal Laboratory', 'Fighting');
INSERT INTO Games(title, year, developers, genre) VALUES('Super Mario 64', 1996, 'Nintendo EAD', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Golden Eye 007', 1997, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Kart 64', 1996, 'Nintendo EAD', 'Racing');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Fox 64', 1997, 'Nintendo EAD', 'Rail/Scrolling Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Perfect Dark', 2000, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Wars: Shadow of the Empire', 1996, 'Lucas Arts', 'Action');
INSERT INTO Games(title, year, developers, genre) VALUES('Banjo-Kazooie', 1998, 'Rare', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Party', 1998, 'Hudson Soft', 'Party Game');
INSERT INTO Games(title, year, developers, genre) VALUES('Tony Hawk''s Pro Skater' , 1996, 'Neversoft', 'Extreme Sports');
```

## Side Notes

DON'T FORGET TO END EACH QUERY IN A SEMICOLON!! `;`

## Queries

To receive full credit for this assignment, complete questions 1 through 7. Queries after that are a bonus!
Use SQL queries to complete the following tasks. Copy these queries, and place them onto a file called "n64.sql" or similar (it MUST end in .sql). Upload this file to github, and hand it in via Google Classroom 

1. Select the title of all games

2. Show all the years in the database.

3. Show the title of each game made by 'Rare'.

4. Select all games that were made before 1998.

5. Find the average release year of all games made by 'Nintendo EAD'

6. Show the developer names of each game, in alphabetical order.

7. Show the titles of games not made by 'Nintendo EAD'.

8. Add the the game 'F-Zero X', released in 1998, made by 'Nintendo EAD', and with the genre 'Racing'.

9. Show all the game titles in descending order of their release year.

10. Remove all games not made by 'Hudson Soft'.

11. Show the average release year for games that were made by Rare or have the title `Tony Hawk''s Pro Skater` in order of their title

12. Show the id and title and genre of all games that were either:

  Made before 1997,

  Made by Hal Laboratory,

  Or, have the genre Platforming AND are made by Rare.
