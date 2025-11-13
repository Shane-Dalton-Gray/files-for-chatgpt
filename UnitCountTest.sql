Select UnitCountSoldloads,UnitCountProject, IF(UnitCountSoldloads = 0,"FAIL",IF (UnitCountSoldloads = UnitCountProject,"PASS","FAIL")) as PassFail from
(select count(unit) as UnitCountSoldloads, (select count(unitnumbers) from tblprojects where projectnumber = {{ projectInput.value }}) as UnitCountProject
from soldloads 
where soldloads.projectnumber = {{projectInput.value}})sub1