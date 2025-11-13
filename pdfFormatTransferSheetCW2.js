const TransferSheetCW = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newTransferSheetCW = {};
let Units = [];


for(const i of TransferSheetCW){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year,
    'Invoice': i.Invoice,
    'GivingOne': i.GivingOne,
    'GivingTwo': i.GivingTwo,
    'OUInvoice':i.OUInvoice,
    'SalePrice':i.SalePrice,
    'PM':i.PM
   
  }

{
  Units.push(newItem);
}
}
newTransferSheetCW.SoldDate = TransferSheets[0].SoldDate
newTransferSheetCW.LoadNumbers = TransferSheets[0].LoadNumbers
newTransferSheetCW.ProjectNumber = TransferSheets[0].ProjectNumber
newTransferSheetCW.SellingDlrName = TransferSheets[0].SellingDlrName
newTransferSheetCW.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newTransferSheetCW.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newTransferSheetCW.SellingDlrCity = TransferSheets[0].SellingDlrCity
newTransferSheetCW.SellingDlrSt = TransferSheets[0].SellingDlrSt
newTransferSheetCW.SellingDlrZip = TransferSheets[0].SellingDlrZip
newTransferSheetCW.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newTransferSheetCW.SellingDlrFax = TransferSheets[0].SellingDlrFax
newTransferSheetCW.SellingDlrContact = TransferSheets[0].SellingDlrContact
newTransferSheetCW.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newTransferSheetCW.FreightCo = TransferSheets[0].FreightCo
newTransferSheetCW.FreightCoContact = TransferSheets[0].FreightCoContact
newTransferSheetCW.FreightCoPhone = TransferSheets[0].FreightCoPhone
newTransferSheetCW.FreightAmt = TransferSheets[0].FreightAmt
newTransferSheetCW.BuyingDlrName = TransferSheets[0].BuyingDlrName
newTransferSheetCW.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newTransferSheetCW.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newTransferSheetCW.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newTransferSheetCW.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newTransferSheetCW.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newTransferSheetCW.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newTransferSheetCW.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newTransferSheetCW.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newTransferSheetCW.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newTransferSheetCW.SumSalePrice = TransferSheets[0].SumSalePrice
newTransferSheetCW.ColumnName310 = TransferSheets[0].ColumnName310
newTransferSheetCW.InvoiceColumnName = TransferSheets[0].InvoiceColumnName
newTransferSheetCW.ColumnName261A = TransferSheets[0].ColumnName261A
newTransferSheetCW.ColumnName65A = TransferSheets[0].ColumnName65A
newTransferSheetCW.Units = Units

return newTransferSheetCW