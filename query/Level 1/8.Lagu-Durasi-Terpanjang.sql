/*	Lagu dengan Durasi Terpanjang: 
	Temukan 10 lagu dengan durasi (dalam milidetik) terpanjang. 
	Tampilkan nama lagu dan durasinya.
*/

SELECT 
	name,
	milliseconds AS durasi
FROM 
	track
	ORDER BY 
		milliseconds DESC
	LIMIT 10	 