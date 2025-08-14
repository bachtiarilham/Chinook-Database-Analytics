/*	**Perbandingan Penjualan Setiap Tahun:** 
	Buat query yang membandingkan total penjualan tahun ini dengan total penjualan tahun sebelumnya. 
	Tampilkan tahun dan total penjualan untuk kedua tahun tersebut.
*/

SELECT
	EXTRACT(YEAR FROM invoicedate) AS ts,
	sum(total)
FROM 
	invoice
GROUP BY ts DESC
LIMIT 2









