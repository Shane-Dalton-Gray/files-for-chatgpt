SELECT 
 	if(
	 	p.ProjectNumber IS NULL 
		 OR COUNT(p.ProjectNumber) <> COUNT(p.DTNNumber) 
		 OR COUNT(p.ProjectNumber) <> COUNT(s.BuyingDlrNumber) 
		 OR COUNT(p.ProjectNumber) <> COUNT(s.SellingDlrNumber) 
		 OR COUNT(p.ProjectNumber) <> COUNT(pp.DTNNumber) 
		 OR s.BuyingDlrNumber <> p.DTNNumber,
		 "FAIL","PASS") AS Results
	FROM tblprojects p
	LEFT JOIN soldloads s 
		ON s.ProjectNumber = p.ProjectNumber
	LEFT JOIN tblprojectpayables pp 
		ON pp.ProjectNumber = p.ProjectNumber
	WHERE p.ProjectNumber = {{projectInput.value}}
	GROUP BY p.ProjectNumber,p.LoadNumbers, p.DTNNumber, s.BuyingDlrNumber, s.SellingDlrNumber, pp.DTNNumber