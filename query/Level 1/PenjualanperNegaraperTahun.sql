SELECT 
	EXTRACT(YEAR FROM (invoicedate)) AS tahun, 
	billingcountry, 
	SUM(quantity) AS totalpenjualan,
	SUM(total) AS totaldollar
FROM invoice 
	LEFT JOIN invoiceline
		ON invoice.InvoiceId = invoiceline.InvoiceId
	GROUP BY 
		tahun,
		billingcountry 
	ORDER BY 
		tahun DESC, 
		totalpenjualan DESC, 
		totaldollar DESC 
;