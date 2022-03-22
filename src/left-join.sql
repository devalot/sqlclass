SELECT artists.id,
       artists.name AS artist,
       albums.id,
       albums.name AS album
  FROM artists
  LEFT JOIN albums ON artists.id = albums.artist_id
 WHERE artists.id IN (1, 7);
