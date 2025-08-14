SELECT 
	EXTRACT(YEAR FROM (invoicedate)) AS tahun,  
	SUM(quantity) AS totalpenjualan,
	SUM(total) AS totaldollar
FROM invoice 
	LEFT JOIN invoiceline
		ON invoice.InvoiceId = invoiceline.InvoiceId
	GROUP BY 
		tahun 
;