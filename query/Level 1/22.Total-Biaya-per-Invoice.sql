/*	Total Biaya per Invoice: 
	Hitung total biaya (UnitPrice * Quantity) untuk setiap invoice. 
	Tampilkan InvoiceId dan total biayanya.
*/

SELECT 
	invoice.InvoiceId,
	SUM(invoiceline.UnitPrice * invoiceline.Quantity) AS totalbiaya
FROM 
	invoice
JOIN invoiceline ON  invoiceline.InvoiceId = invoice.InvoiceId

GROUP BY invoice.InvoiceId











