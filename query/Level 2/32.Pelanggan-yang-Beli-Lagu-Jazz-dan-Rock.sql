/*	
**Pelanggan yang Beli Lagu Jazz dan Rock:** 
Identifikasi pelanggan yang pernah membeli lagu bergenre 'Jazz' dan 'Rock' secara bersamaan.
*/


SELECT
	c.LastName,
	c.FirstName
FROM  
	customer AS c
JOIN invoice AS i ON i.CustomerId = c.CustomerId 
WHERE i.InvoiceId IN 
	(
	SELECT 
		il.InvoiceId
	FROM 
		invoiceline AS il
	JOIN track AS t ON t.TrackId = il.TrackId
	JOIN genre AS g ON g.GenreId = t.GenreId
	WHERE g.`Name` LIKE "jazz" 
	)
AND i.InvoiceId IN 
	(
	SELECT 
		il.InvoiceId
	FROM 
		invoiceline AS il
	JOIN track AS t ON t.TrackId = il.TrackId
	JOIN genre AS g ON g.GenreId = t.GenreId
	WHERE g.`Name` LIKE "rock" 
	)


	 	