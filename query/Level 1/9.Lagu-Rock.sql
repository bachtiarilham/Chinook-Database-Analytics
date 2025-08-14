/*	Lagu Rock:
	Tampilkan semua lagu yang genrenya adalah 'Rock'. 
	Tampilkan nama lagu, nama artis, dan genre.
*/

SELECT 
	track.`Name`,
	artist.`Name`,
	genre.`Name`
FROM 
	track
	JOIN album ON album.AlbumId = track.AlbumId
	JOIN genre ON genre.GenreId = track.GenreId
	JOIN artist ON artist.ArtistId = album.ArtistId
	
	WHERE genre.`Name` LIKE "rock"	 
	
	;