/*	Jumlah Penjualan per Kota: 
	Hitung total penjualan (berdasarkan Invoice Total) untuk setiap kota (BillingCity). 
	Tampilkan nama kota dan total penjualan, urutkan dari yang terbesar.
*/

SELECT 
	invoice.BillingCity,
	SUM(invoice.Total) AS Totalpenjualan
FROM 
	invoice
	GROUP BY billingcity		 
	ORDER BY totalpenjualan DESC
	;