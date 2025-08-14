/*	**Genre Terpopuler per Negara:** 
	Tentukan genre musik mana yang paling banyak dijual di setiap negara. 
	Tampilkan nama negara, nama genre, dan total penjualan untuk genre tersebut di negara itu.
*/


WITH salesgenrepercountry AS (
	SELECT 
		invoice.BillingCountry,
		genre.`Name`AS namagenre,
		sum(invoiceline.Quantity) AS totalkuantitas
	FROM 
		invoice
	JOIN invoiceline ON invoiceline.InvoiceId = invoice.InvoiceId
	JOIN track ON track.TrackId = invoiceline.TrackId
	JOIN genre ON genre.GenreId = track.GenreId
		
	GROUP BY 	
		invoice.BillingCountry,
		genre.`Name`
)
SELECT 
	s.billingcountry,
	s.namagenre,
	s.totalkuantitas
FROM 
	salesgenrepercountry AS S
JOIN (
	SELECT 
		billingcountry,
		MAX(totalkuantitas) AS kuantitasmaksimum
	FROM 
		salesgenrepercountry
	GROUP BY 
		billingcountry
) AS maxsales
	ON s.billingcountry = maxsales.billingcountry AND s.totalkuantitas = maxsales.kuantitasmaksimum

GROUP BY 
	s.billingcountry,
	s.totalkuantitas DESC









