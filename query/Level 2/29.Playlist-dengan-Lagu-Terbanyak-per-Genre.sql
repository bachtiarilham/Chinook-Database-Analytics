/*	
**Playlist dengan Lagu Terbanyak per Genre:** 
Identifikasi playlist mana yang memiliki lagu terbanyak untuk setiap genre. 
Tampilkan nama playlist, nama genre, dan jumlah lagunya.
*/

WITH laguperplaylist AS 
	(
	SELECT 
		g.`Name`AS genrename,
		p.`Name` AS playlistname,
		COUNT(pt.TrackId) AS trackpergenre
	FROM 
		track AS t
	JOIN genre AS g ON g.GenreId = t.GenreId
	JOIN playlisttrack AS pt ON pt.TrackId = t.TrackId
	JOIN playlist AS p ON p.PlaylistId = pt.PlaylistId
	
	GROUP BY playlistname, genrename
	)

SELECT 
	t1.genrename,
	t1.playlistname,
	t1.trackpergenre
FROM laguperplaylist AS t1
JOIN 
	(
	SELECT
		genrename,
		MAX(trackpergenre) AS makstrackpergenre
	FROM
		laguperplaylist
	GROUP BY
		genrename
	) 
	AS T2
	ON T1.genrename = T2.genrename AND T1.trackpergenre = T2.makstrackpergenre
order BY 
	T1.genrename, T1.trackpergenre DESC





