insert into tblprojectpayables (projectnumber,dtnnumber,account,amount,invoicenumber,solddate)
values ({{projectInput.value}},10006,"Payable",{{freightAmountNumberInput.value}},{{loadNumberSelect.value}},(select solddate from soldloads where projectnumber = {{projectInput.value}} group by solddate));
