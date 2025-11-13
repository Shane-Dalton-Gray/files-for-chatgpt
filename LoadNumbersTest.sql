SELECT IF(PayablesTest = ProjectTest and ProjectTest = SoldLoadsTest,"PASS","FAIL") as Results from
(Select If(count(PayablesLoad) <> count(ProjectNumber),"FAIL","PASS") as PayablesTest,If(count(ProjectLoad) <> count(ProjectNumber),"FAIL","PASS") as ProjectTest,
If(count(SoldLoadsLoad) <> count(ProjectNumber) or count(ProjectNumber) <1,"FAIL","PASS") as SoldLoadsTest from
(select tblprojects.ProjectNumber as ProjectNumber,tblprojectpayables.InvoiceNumber as PayablesLoad,tblprojects.LoadNumbers as ProjectLoad,
soldloads.`load #` as SoldLoadsLoad
from tblprojects
left join tblprojectpayables on tblprojectpayables.ProjectNumber = tblprojects.ProjectNumber and tblprojectpayables.InvoiceNumber = tblprojects.LoadNumbers
left join soldloads on soldloads.ProjectNumber = tblprojects.ProjectNumber and soldloads.`load #` = tblprojects.LoadNumbers
where tblprojects.ProjectNumber  = {{projectInput.value}}
group by tblprojects.LoadNumbers,tblprojectpayables.InvoiceNumber,soldloads.`Load #`)sub)sub2