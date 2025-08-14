/*	**Artis yang Belum Punya Album:** 
	Temukan artis yang terdaftar di database `Artist`, 
	tetapi tidak memiliki album. Tampilkan nama artis.
*/


SELECT
  artist.Name
FROM
  artist
LEFT JOIN
  album ON album.ArtistId = artist.ArtistId
WHERE
  album.ArtistId IS NULL;








