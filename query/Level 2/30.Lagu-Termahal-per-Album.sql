/*	
**Lagu Termahal per Album:** 
Temukan lagu termahal di setiap album. 
Tampilkan judul album, nama lagu, dan harga satuannya (`UnitPrice`)
*/

WITH T1 AS 
(
SELECT 
	a.Title AS namaalbum,
	t.`Name` AS namalagu,
	t.UnitPrice AS harga
FROM track AS t
JOIN album AS a ON a.AlbumId = t.AlbumId
)
SELECT 
	T1.namaalbum,
	T1.namalagu,
	T1.harga
FROM 	
	T1
JOIN 
	(
	SELECT
		namaalbum,
		MAX(harga) AS hargamaks
	FROM 
		T1
	GROUP BY 
		namaalbum
	)
	AS T2 ON t1.namaalbum = t2.namaalbum AND t1.harga = t2.hargamaks

ORDER BY namaalbum, hargamaks DESC




