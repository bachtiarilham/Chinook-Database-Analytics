/*	**Pelanggan dengan Pembelian Terbanyak per Kota:** 
	Temukan pelanggan yang memiliki total pembelian tertinggi di setiap kota. 
	Tampilkan nama pelanggan, kota, dan total pembeliannya.
*/

SELECT 
	invoice.Billingcity,
	customer.LastName,
	customer.FirstName,
	invoice.Total
FROM 
	customer
JOIN invoice ON invoice.CustomerId = customer.CustomerId
JOIN (
	SELECT 
		BillingCity,
		MAX(Total) AS totalmax
	FROM invoice
	GROUP BY 
		invoice.billingcity
) AS maxpercity ON invoice.billingcity= maxpercity.billingcity AND invoice.total = maxpercity.totalmax

ORDER BY invoice.total DESC












