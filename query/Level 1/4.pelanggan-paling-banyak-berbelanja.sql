SELECT 
	firstname,
	lastname,
	SUM(i.Total) AS totaldollar
FROM customer AS c
	LEFT JOIN invoice AS i
		ON c.CustomerId = i.CustomerId
	LEFT JOIN invoiceline AS il
		ON i.InvoiceId = il.InvoiceId
	GROUP BY 
		c.CustomerId,
		c.FirstName,
		c.LastName
	ORDER BY  
		totaldollar DESC 
	LIMIT 10
;