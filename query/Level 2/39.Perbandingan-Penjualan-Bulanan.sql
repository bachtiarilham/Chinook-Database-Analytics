/*	
**Perbandingan Penjualan Bulanan:** 
Buat laporan yang membandingkan total penjualan di bulan Januari 2009 
dengan total penjualan di bulan Februari 2009.
*/


WITH Penjualan AS (
    SELECT
        SUM(CASE WHEN DATE_FORMAT(InvoiceDate, '%Y-%m') = '2024-01' THEN Total ELSE 0 END) AS TotalJanuari2024,
        SUM(CASE WHEN DATE_FORMAT(InvoiceDate, '%Y-%m') = '2024-02' THEN Total ELSE 0 END) AS TotalFebruari2024
    FROM
        invoice
    WHERE
        YEAR(InvoiceDate) = 2024
)
SELECT
    TotalJanuari2024,
    TotalFebruari2024,
    TotalFebruari2024 - TotalJanuari2024 AS Selisih
FROM
    Penjualan;





	 	