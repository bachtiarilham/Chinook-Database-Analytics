/*	
**Pelanggan yang Beli Lagu di Semua Genre:** 
Identifikasi pelanggan yang pernah membeli setidaknya satu lagu dari setiap genre yang ada.
*/


SELECT
  c.FirstName,
  c.LastName,
  COUNT(DISTINCT g.GenreId) AS total_genre_dibeli
FROM
  Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine AS il ON i.InvoiceId = il.InvoiceId
JOIN Track AS t ON il.TrackId = t.TrackId
JOIN Genre AS g ON t.GenreId = g.GenreId
GROUP BY
  c.CustomerId
HAVING
  COUNT(DISTINCT g.GenreId) = (SELECT COUNT(*) FROM Genre);
	





	 	