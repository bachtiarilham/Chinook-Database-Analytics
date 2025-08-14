	/*	Pelanggan dengan Fax dan Phone Kosong: 
		Temukan semua pelanggan yang tidak memiliki nomor faks dan telepon. 
		Tampilkan nama depan, nama belakang, Fax, dan Phone mereka.
*/

SELECT 
	customer.LastName,
	customer.FirstName,
	customer.Fax,
	customer.Phone
FROM 
	customer
WHERE 
	customer.Fax IS NULL 
	AND customer.Phone IS NULL 











