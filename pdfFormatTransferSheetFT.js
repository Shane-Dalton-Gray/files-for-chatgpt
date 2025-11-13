const TransferSheetFT = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newTransferSheetFT = {};
let Units = [];


for(const i of TransferSheetFT){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year,
    'GivingOne': i.GivingOne,
    'GivingTwo': i.GivingTwo,
    'OUInvoice':i.OUInvoice
 
   
  }

{
  Units.push(newItem);
}
}
newTransferSheetFT.SoldDate = TransferSheets[0].SoldDate
newTransferSheetFT.LoadNumbers = TransferSheets[0].LoadNumbers
newTransferSheetFT.ProjectNumber = TransferSheets[0].ProjectNumber
newTransferSheetFT.SellingDlrName = TransferSheets[0].SellingDlrName
newTransferSheetFT.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newTransferSheetFT.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newTransferSheetFT.SellingDlrCity = TransferSheets[0].SellingDlrCity
newTransferSheetFT.SellingDlrSt = TransferSheets[0].SellingDlrSt
newTransferSheetFT.SellingDlrZip = TransferSheets[0].SellingDlrZip
newTransferSheetFT.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newTransferSheetFT.SellingDlrFax = TransferSheets[0].SellingDlrFax
newTransferSheetFT.SellingDlrContact = TransferSheets[0].SellingDlrContact
newTransferSheetFT.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newTransferSheetFT.FreightCo = TransferSheets[0].FreightCo
newTransferSheetFT.FreightCoContact = TransferSheets[0].FreightCoContact
newTransferSheetFT.FreightCoPhone = TransferSheets[0].FreightCoPhone
newTransferSheetFT.FreightAmt = TransferSheets[0].FreightAmt
newTransferSheetFT.BuyingDlrName = TransferSheets[0].BuyingDlrName
newTransferSheetFT.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newTransferSheetFT.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newTransferSheetFT.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newTransferSheetFT.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newTransferSheetFT.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newTransferSheetFT.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newTransferSheetFT.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newTransferSheetFT.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newTransferSheetFT.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newTransferSheetFT.InvoiceColumnName = TransferSheets[0].InvoiceColumnName
newTransferSheetFT.ColumnName261A = TransferSheets[0].ColumnName261A
newTransferSheetFT.ColumnName65A = TransferSheets[0].ColumnName65A
newTransferSheetFT.Units = Units

return newTransferSheetFT