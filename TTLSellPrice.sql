SELECT round(Sum(310Amount)-((Sum(`HB Seller Is Giving Up`))+(Sum(`261A Seller Is Giving Up`))+(Sum(`65A Seller Is Giving Up`))),2) as TTLSellPrice
FROM soldloads inner join tblprojects on (soldloads.ProjectNumber = tblprojects.ProjectNumber AND soldloads.`Load #` = tblprojects.LoadNumbers AND soldloads.Unit = tblprojects.UnitNumbers)
WHERE `load #` = {{loadNumberSelect.value}} and soldloads.projectnumber  = {{projectInput.value}};
