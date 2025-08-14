/*	Genre dengan Total Durasi Lagu Terpanjang: 
	Hitung total durasi (dalam milidetik) dari semua lagu untuk setiap genre. 
	Tampilkan nama genre dan total durasinya, urutkan dari yang terpanjang.
*/

SELECT DISTINCT
	genre.`Name`,
	SUM(track.Milliseconds) AS totaldurasi
FROM 
	track
JOIN genre ON genre.GenreId = track.GenreId
GROUP BY genre.`Name`
ORDER BY totaldurasi DESC 





