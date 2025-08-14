/*	Jumlah Bawahan per Atasan
	Menghitung berapa banyak karyawan yang melapor langsung ke setiap atasan.
*/

SELECT 
	manager.lastName AS managerlastname,
	manager.firstName AS managerfirstname,
	COUNT(employee.EmployeeId) AS jumlahkaryawan

FROM 
	employee AS employee
	JOIN employee AS manager ON employee.ReportsTo = manager.EmployeeId
	GROUP BY  
		manager.EmployeeId,
		manager.FirstName,
		manager.LastName
	ORDER BY 
		jumlahkaryawan DESC 
		
	


;