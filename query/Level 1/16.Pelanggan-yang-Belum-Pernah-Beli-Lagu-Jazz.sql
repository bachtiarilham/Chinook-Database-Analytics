/*	Pelanggan yang Belum Pernah Beli Lagu Jazz: 
	Cari pelanggan yang tidak pernah membeli lagu bergenre 'Jazz'. 
	Tampilkan nama depan dan nama belakang pelanggan tersebut.
*/

SELECT 
	customer.FirstName,
	customer.LastName
FROM 
	customer
LEFT JOIN (
	SELECT DISTINCT invoice.CustomerId
	FROM invoice
	JOIN invoiceline ON invoice.InvoiceId = invoiceline.InvoiceId
	JOIN track ON track.TrackId = invoiceline.TrackId
	JOIN genre ON genre.GenreId = track.GenreId
	WHERE genre.`Name` LIKE "jazz"
	
)AS jazzbuyers ON customer.CustomerId = jazzbuyers.CustomerId

WHERE 
	jazzbuyers.Customerid is null 

GROUP BY customer.CustomerId
;