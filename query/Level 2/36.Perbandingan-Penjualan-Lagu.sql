/*	
**Perbandingan Penjualan Lagu:** 
Cari lagu yang terjual lebih dari rata-rata penjualan semua lagu.
*/

SELECT 
	t.`Name` AS namalagu
FROM 
	track AS t
JOIN invoiceline AS i ON i.TrackId = t.TrackId	
WHERE (i.UnitPrice * i.Quantity) > 
	(
	SELECT 
		AVG(i.UnitPrice * i.Quantity)
	FROM 
		invoiceline AS i
	)	


	 	