select round(sum(landedunder),2)  as TTLLandedUnder
from tblprojects inner join soldloads on (soldloads.ProjectNumber = tblprojects.ProjectNumber AND soldloads.`Load #` = tblprojects.LoadNumbers AND soldloads.Unit = tblprojects.UnitNumbers)
where tblprojects.LoadNumbers = {{loadNumberSelect.value}} and tblprojects.ProjectNumber = {{projectInput.value}}