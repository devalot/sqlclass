SELECT artists.id,
       artists.name AS artist,
       albums.id,
       albums.name AS album
  FROM artists, albums
 WHERE artists.id = albums.artist_id
   AND artists.id IN (1, 7);
