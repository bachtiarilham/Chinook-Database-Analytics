/*	Jumlah Karyawan per Kota: 
	Hitung berapa banyak karyawan yang bekerja di setiap kota. 
	Tampilkan kota dan jumlah karyawannya.
*/

SELECT
	employee.City,
	SUM(employee.EmployeeId)
FROM 
	employee
GROUP BY employee.city
;