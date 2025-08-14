/*	
**Analisis Pertumbuhan Karyawan:** 
Hitung jumlah karyawan yang dipekerjakan setiap tahun.
*/


SELECT
	EXTRACT(YEAR FROM e.HireDate) AS tahunmasuk,
	COUNT(e.EmployeeId) AS jumlahpekerja
FROM 
	employee AS e
GROUP BY tahunmasuk


	 	