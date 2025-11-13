UPDATE tblprojectpayables
SET Projectnumber = {{table12.recordUpdates['0'].ProjectNumber}},DTNNumber = {{table12.recordUpdates['0'].DTNNumber}},Account = {{table12.recordUpdates['0'].Account}},Amount = {{table12.recordUpdates['0'].AmountDue}}, SoldDate = {{table12.recordUpdates['0'].SoldDate}}, InvoiceNumber = {{table12.recordUpdates['0'].Invoicenumber}}
WHERE ID = {{table12.selectedRow.data.ID}};