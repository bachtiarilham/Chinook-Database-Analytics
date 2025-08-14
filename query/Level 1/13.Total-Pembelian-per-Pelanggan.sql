/*	Total Pembelian per Pelanggan
	Hitung total pembelian yang dilakukan oleh setiap pelanggan. 
	Tampilkan nama pelanggan dan total pembelian, urutkan dari yang terbesar.
*/

SELECT 
	customer.FirstName,
	customer.LastName,
	SUM(invoice.Total) AS totalpembelian
FROM 
	invoice
	JOIN customer ON customer.CustomerId = invoice.CustomerId
	GROUP BY 
		customer.CustomerId
;