	select 
		if(
			count(p.ProjectNumber) = count(pp.SoldDate) 
			and count(p.ProjectNumber) = count(s.SoldDate) 
			and pp.SoldDate = s.SoldDate,
		"PASS","FAIL") as Results 

	from tblprojects p
	left join soldloads s on s.ProjectNumber = p.ProjectNumber
	left join tblprojectpayables pp on pp.ProjectNumber = p.ProjectNumber
	where p.ProjectNumber = {{projectInput.value}}
	group by p.ProjectNumber, pp.SoldDate, s.SoldDate;