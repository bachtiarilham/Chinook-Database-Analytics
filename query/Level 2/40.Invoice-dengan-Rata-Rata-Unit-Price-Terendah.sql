/*	
**Invoice dengan Rata-Rata Unit Price Terendah:** 
Temukan `InvoiceId` yang memiliki rata-rata `UnitPrice` terendah. 
Tampilkan `InvoiceId` tersebut beserta rata-rata `UnitPrice`-nya.
*/

SELECT
    InvoiceId,
    AVG(UnitPrice) AS AvgUnitPrice
FROM
    invoiceline
GROUP BY
    InvoiceId
ORDER BY
    AvgUnitPrice ASC






	 	