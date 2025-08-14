/*	Lagu yang Dijual Lebih dari 2 Kali: 
	Temukan lagu-lagu yang terjual lebih dari 2 kali. 
	Tampilkan nama lagu dan berapa kali lagu itu terjual.
*/

SELECT 
	track.`Name`,
	COUNT(invoiceline.InvoiceId) AS jumlahlaguterjual
FROM 
	track
JOIN invoiceline ON invoiceline.TrackId = track.TrackId
GROUP BY 
	track.`Name`
HAVING 
	COUNT(invoiceline.InvoiceId) > 2
;