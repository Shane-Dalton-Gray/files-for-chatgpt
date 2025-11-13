Select UnitNumbersSoldloads,UnitNumbersProject, IF( UnitNumbersSoldloads is null,"FAIL",IF (UnitNumbersSoldloads = UnitNumbersProject,"PASS","FAIL")) as PassFail from
(select sum(unit) as UnitNumbersSoldloads, (select sum(unitnumbers) from tblprojects where projectnumber = {{projectInput.value}}) as UnitNumbersProject
from soldloads 
where soldloads.projectnumber = {{ projectInput.value }})sub1

