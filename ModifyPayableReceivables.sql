select ProjectNumber,DTNNumber,`Dealer Name`,SoldDate,Account,Amount as AmountDue,AmtPaid,Paiddate,Profitability,Invoicenumber,tblprojectpayables.ID
from tblprojectpayables inner join `gm dealers` on (DTNNumber = `gm dealers`.id)
where projectnumber = {{projectInput.value}} and tblprojectpayables.ID = {{payablesReceivablesDetailsTable.selectedRow.data.ID}}
