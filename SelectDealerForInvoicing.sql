select DTNNumber
from tblprojectpayables
where account = "receivable" and ProjectNumber = {{projectInput.value}} and InvoiceNumber = {{loadNumberSelect.value}}