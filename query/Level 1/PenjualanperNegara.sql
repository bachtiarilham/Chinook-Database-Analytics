SELECT billingcountry,SUM(quantity) AS totalquantity, SUM(Total) AS totaldollar
FROM invoice 
	LEFT JOIN invoiceline
		ON invoice.InvoiceId = invoiceline.InvoiceId
	GROUP BY billingcountry
	ORDER BY totaldollar DESC
;