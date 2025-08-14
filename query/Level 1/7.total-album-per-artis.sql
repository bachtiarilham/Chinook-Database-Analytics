/*	Total Album per Artis: 
	Hitung berapa banyak album yang dimiliki setiap artis. 
	Tampilkan nama artis dan jumlah albumnya, 
	urutkan dari yang terbanyak.
*/

SELECT 
	name,
	COUNT(artist.ArtistId) AS jumlahalbum
FROM 
	artist
	LEFT JOIN album 
		ON	artist.ArtistId = album.ArtistId
	GROUP BY artist.`artistid`
	ORDER BY 
		jumlahalbum DESC
		
	
			 