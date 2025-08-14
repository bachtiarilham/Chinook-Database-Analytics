/*	Karyawan yang Lahir Setelah 1968: 
  	Tampilkan semua karyawan yang tanggal lahirnya setelah 1 Januari 1968. 
	Tampilkan nama depan, nama belakang, dan tanggal lahirnya.
*/

SELECT 
	firstname,
	lastname,
	birthdate
FROM 
	employee
WHERE 
	birthdate > (
		SELECT MIN(birthdate)
		FROM employee
		WHERE EXTRACT(YEAR FROM birthdate) = 1968
		)
		 