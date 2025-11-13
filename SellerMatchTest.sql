select IF (Rep = Sellingrep, "PASS","FAIL") as Results from
(select tblprojects.ProjectNumber as ProjNumber,Rep, SellingRep
from tblprojects
left join soldloads on soldloads.ProjectNumber = tblprojects.ProjectNumber
where tblprojects.ProjectNumber = {{projectInput.value}}
group by tblprojects.ProjectNumber,REP,SELLINGREP)sub