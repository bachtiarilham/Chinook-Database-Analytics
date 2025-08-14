/*	Total Pendapatan per Manajer Penjualan: 
	Hitung total pendapatan yang dihasilkan oleh setiap manajer penjualan. 
	Tampilkan nama manajer dan total pendapatan yang dihasilkannya.
*/

SELECT 
	employee.LastName,
	employee.FirstName,
	SUM(invoice.Total) AS totalpendapatan
FROM 
	employee
JOIN customer ON  employee.EmployeeId = customer.SupportRepId
JOIN invoice ON invoice.CustomerId = customer.CustomerId

GROUP BY employee.EmployeeIdcustomer











