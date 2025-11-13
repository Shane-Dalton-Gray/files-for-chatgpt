select sum(310Amount)
from soldloads inner join tblprojects on (soldloads.ProjectNumber = tblprojects.ProjectNumber AND soldloads.`Load #` = tblprojects.LoadNumbers AND soldloads.Unit = tblprojects.UnitNumbers)
where `load #` = {{loadNumberSelect.value}} and soldloads.ProjectNumber = {{projectInput.value}}

