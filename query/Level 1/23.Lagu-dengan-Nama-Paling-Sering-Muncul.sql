/*	Lagu dengan Nama Paling Sering Muncul: 
	Temukan nama lagu yang paling sering muncul di database (mungkin karena versi atau album yang berbeda). 
	Tampilkan nama lagu dan berapa kali nama itu muncul.
*/

SELECT 
	track.`Name`,
	COUNT(track.TrackId) AS frekuensimuncul
FROM 
	track
GROUP BY track.name
ORDER BY frekuensimuncul DESC
LIMIT 1











