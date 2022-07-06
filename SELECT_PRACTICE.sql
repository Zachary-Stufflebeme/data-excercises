USE albums_db;
SELECT * FROM albums;
#there are 31 rows in the albums database
SELECT DISTINCT artist FROM albums;
# there are 23 unique artist names listed
#The Primary Key for the table is the song ID
SELECT * FROM albums;
#the oldest release date is 1967 and the newest is 2011
SELECT * FROM albums WHERE artist = "Pink Floyd"; #The wall, The dark side of the moon
SELECT * FROM albums WHERE name = "Sgt. Pepper's Lonely Hearts Club Band"; #1967
SELECT * FROM albums WHERE name = "Nevermind"; #Grunge alt-rock
SELECT * FROM albums WHERE release_date BETWEEN 1989 and 1999;#there is a bunch.
SELECT * FROM albums WHERE sales < 20; # also a lot 
SELECT * FROM albums WHERE genre = "Rock"; #doesnt work for other kinds of rock bc no wildcards used. 


