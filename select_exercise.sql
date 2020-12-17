SELECT * 
FROM albums 
WHERE artist = 'Pink Floyd';  

# The Dark Side of the Moon, The Wall

SELECT * 
FROM albums 
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';  

# 1967

SELECT * 
FROM albums 
WHERE name = 'Nevermind';  

# Grunge, Alternative rock 

SELECT * 
FROM albums 
WHERE release_date BETWEEN '1990' AND '1999';  

#The Immaculate Collection, Dangerous, Metallica, Nevermind, The Bodyguard, Jagged Little Pill, Falling into You
#Come On Over, Let''s Talk About Love, Titanic: Music from the Motion Picture, Supernatural

SELECT * 
FROM albums 
WHERE sales < 20;  

#Grease: The Original Soundtrack from the Motion Picture, Bad, Sgt. Pepper''s Lonely Hearts Club Band,
#Dirty Dancing, Let''s Talk About Love, Dangerous, The Immaculate Collection, Abbey Road, Born in the U.S.A.
#Brothers in Arms, Titanic: Music from the Motion Picture, Nevermind, The Wall

SELECT * 
FROM albums 
WHERE genre = 'Rock';  

#Sgt. Pepper''s Lonely Hearts Club Band, 1, Abbey Road, Born in the U.S.A., Supernatural
# The data type for "Genre" is a string, so the query was looking for the specific "Rock" string nothing extra

