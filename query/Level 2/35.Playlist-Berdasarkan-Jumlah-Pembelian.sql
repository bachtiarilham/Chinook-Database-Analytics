/*	
**Playlist Berdasarkan Jumlah Pembelian:** 
Temukan 3 playlist teratas berdasarkan jumlah total penjualan lagu-lagunya. 
Tampilkan nama playlist dan total jumlah lagu yang terjual.
*/

SELECT 
	p.`Name` AS namaplaylist,
	SUM(i.UnitPrice * i.Quantity) AS hargalagu
FROM 
	playlist AS p
JOIN playlisttrack AS pt ON pt.PlaylistId = p.PlaylistId
JOIN track AS t ON t.TrackId = pt.TrackId
JOIN invoiceline AS i ON i.TrackId = t.TrackId

GROUP BY p.`Name`
ORDER BY hargalagu DESC
LIMIT 3


	 	