const Invoice = formatDataAsArray({{ Invoice2.data}})

let newInvoice = {};
let Units = [];


for(const i of Invoice){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VinRt
   
  }

{
  Units.push(newItem);
}
}
newInvoice.ProjectNumber = Invoice[0].ProjectNumber
newInvoice.InvoiceNumber = Invoice[0].InvoiceNumber
newInvoice.SoldDate = Invoice[0].Solddate
newInvoice.OwningRep = Invoice[0].OwningRep
newInvoice.DTNNumber = Invoice[0].DTNNumber
newInvoice.DealerName = Invoice[0]['Dealer Name']
newInvoice.Address = Invoice[0].Address
newInvoice.City = Invoice[0].City
newInvoice.St = Invoice[0].St
newInvoice.Zip = Invoice[0].Zip
newInvoice.Phone = Invoice[0].Phone
newInvoice.Fax = Invoice[0].Fax
newInvoice.Contact = Invoice[0].Contact
newInvoice.Amount = Invoice[0].Amount
newInvoice.AmtPaid = Invoice[0].AmtPaid
newInvoice.AmtDue = Invoice[0].AmtDue
newInvoice.FirstName = Invoice[0].FirstName
newInvoice.Email = Invoice[0].Email
newInvoice.CellPhone = Invoice[0].CellPhone
newInvoice.Units = Units

return newInvoice