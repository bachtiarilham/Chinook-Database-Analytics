/*	
**Album dengan Lagu Terbanyak per Artis:** 
Temukan album yang memiliki jumlah lagu terbanyak untuk setiap artis. 
Tampilkan nama artis, judul album, dan jumlah lagunya.
*/

WITH T1 AS 
(
SELECT 
	ar.`Name` AS namaartis,
	al.Title AS namaalbum,
	COUNT(t.TrackId) AS jumlahlagu
FROM 
	album AS al
JOIN artist AS ar ON ar.ArtistId = al.ArtistId
JOIN track AS t ON t.AlbumId = al.AlbumId

GROUP BY namaartis, namaalbum
)

SELECT 
	T1.namaartis,	
	T1.namaalbum,
	T1.jumlahlagu
FROM 
	T1
JOIN 
	(
	SELECT 
		namaartis,
		MAX(jumlahlagu) AS jumlahlagumaks
	FROM 
		T1
	GROUP BY namaartis
	)
AS T2 ON T1.namaartis = T2.namaartis AND T1.jumlahlagu = T2.jumlahlagumaks
ORDER BY 
	namaartis

	 	