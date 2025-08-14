/*	
**Daftar Karyawan dan Usia Mereka Saat Dipekerjakan:** 
Hitung usia setiap karyawan saat mereka pertama kali dipekerjakan. 
Tampilkan nama karyawan, tanggal dipekerjakan, dan usia mereka saat itu.
*/


SELECT
  	e.LastName AS lastname,
  	e.FirstName AS firstname,
  	e.HireDate AS tanggalkerja,
	TIMESTAMPDIFF(YEAR, e.HireDate, CURDATE()) AS lamakerja
FROM 
	employee AS e
	
	





	 	