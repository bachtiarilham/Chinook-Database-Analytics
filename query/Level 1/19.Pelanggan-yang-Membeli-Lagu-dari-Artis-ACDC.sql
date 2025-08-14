/*	Pelanggan yang Membeli Lagu dari Artis 'AC/DC': 
	Tampilkan nama pelanggan yang pernah membeli lagu dari artis 'AC/DC'. 
	Pastikan setiap nama pelanggan hanya muncul sekali.
*/

SELECT DISTINCT
	customer.FirstName,
	customer.LastName

FROM 
	customer
JOIN 
	(
	SELECT invoice.CustomerId
	FROM invoice
	
	JOIN invoiceline ON invoiceline.InvoiceId = invoice.InvoiceId
	JOIN track ON track.TrackId = invoiceline.TrackId
	JOIN album ON album.AlbumId = track.AlbumId
	JOIN artist ON artist.ArtistId = album.ArtistId
	
	WHERE artist.`Name` LIKE "AC/DC"
	) 
AS beliAcdc ON customer.CustomerId = beliacdc.customerid




