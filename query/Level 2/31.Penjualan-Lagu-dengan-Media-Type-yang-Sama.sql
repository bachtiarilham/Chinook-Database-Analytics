/*	
**Penjualan Lagu dengan `Media Type` yang Sama:** 
Hitung total penjualan untuk setiap jenis `media type`, 
kemudian tampilkan `media type` yang total penjualannya 
 di atas rata-rata total penjualan semua `media type`.
*/

WITH T1 AS 
	(
	SELECT 
		m.`Name` AS namamedia,
		SUM(i.UnitPrice * i.Quantity) AS harga
	FROM track AS t
	JOIN mediatype AS m ON m.MediaTypeId=t.MediaTypeId
	JOIN invoiceline AS i ON i.TrackId = t.TrackId
	GROUP BY namamedia
	)
SELECT 
	T1.namamedia ,
	T1.harga
FROM 	
	T1
WHERE harga > 
	(
	SELECT
		AVG(harga) AS hargaavg
	FROM 
		T1
	) 
GROUP BY namamedia





