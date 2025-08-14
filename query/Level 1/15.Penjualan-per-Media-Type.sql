/*	Penjualan per Media Type: 
	Hitung total penjualan untuk setiap jenis media (misalnya, MPEG audio file, AAC audio file). 
	Tampilkan jenis media dan total penjualannya.
*/

SELECT 
	mediatype.`Name`,
	SUM(invoiceline.Quantity) AS unittotalpenjualan
FROM 
	invoiceline
	JOIN track ON track.TrackId = invoiceline.TrackId
	JOIN mediatype ON mediatype.MediaTypeId = track.MediaTypeId
	
	GROUP BY mediatype.MediaTypeId
;