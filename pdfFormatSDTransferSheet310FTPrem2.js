const SDTransferSheet310FTPrem = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newSDTransferSheet310FTPrem = {};
let Units = [];


for(const i of SDTransferSheet310FTPrem){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year,
    'OUInvoice':i.OUInvoice,
    'GivingOne':i.GivingOne,
    'GivingTwo':i.GivingTwo,
    'Age':i.DOM,
    'PM':i.PM
  }

{
  Units.push(newItem);
}
}
newSDTransferSheet310FTPrem.SoldDate = TransferSheets[0].SoldDate
newSDTransferSheet310FTPrem.LoadNumbers = TransferSheets[0].LoadNumbers
newSDTransferSheet310FTPrem.ProjectNumber = TransferSheets[0].ProjectNumber
newSDTransferSheet310FTPrem.SellingDlrName = TransferSheets[0].SellingDlrName
newSDTransferSheet310FTPrem.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newSDTransferSheet310FTPrem.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newSDTransferSheet310FTPrem.SellingDlrCity = TransferSheets[0].SellingDlrCity
newSDTransferSheet310FTPrem.SellingDlrSt = TransferSheets[0].SellingDlrSt
newSDTransferSheet310FTPrem.SellingDlrZip = TransferSheets[0].SellingDlrZip
newSDTransferSheet310FTPrem.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newSDTransferSheet310FTPrem.SellingDlrFax = TransferSheets[0].SellingDlrFax
newSDTransferSheet310FTPrem.SellingDlrContact = TransferSheets[0].SellingDlrContact
newSDTransferSheet310FTPrem.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newSDTransferSheet310FTPrem.FreightCo = TransferSheets[0].FreightCo
newSDTransferSheet310FTPrem.FreightCoContact = TransferSheets[0].FreightCoContact
newSDTransferSheet310FTPrem.FreightCoPhone = TransferSheets[0].FreightCoPhone
newSDTransferSheet310FTPrem.FreightAmt = TransferSheets[0].FreightAmt
newSDTransferSheet310FTPrem.BuyingDlrName = TransferSheets[0].BuyingDlrName
newSDTransferSheet310FTPrem.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newSDTransferSheet310FTPrem.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newSDTransferSheet310FTPrem.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newSDTransferSheet310FTPrem.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newSDTransferSheet310FTPrem.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newSDTransferSheet310FTPrem.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newSDTransferSheet310FTPrem.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newSDTransferSheet310FTPrem.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newSDTransferSheet310FTPrem.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newSDTransferSheet310FTPrem.SumDifferenceNeg = TransferSheets[0].SumDifferenceNeg
newSDTransferSheet310FTPrem.InvoiceColumnName = TransferSheets[0].InvoiceColumnName
newSDTransferSheet310FTPrem.ColumnName261A = TransferSheets[0].ColumnName261A
newSDTransferSheet310FTPrem.ColumnName65A = TransferSheets[0].ColumnName65A
newSDTransferSheet310FTPrem.ColName310 = TransferSheets[0].ColumnName310
newSDTransferSheet310FTPrem.Units = Units

return newSDTransferSheet310FTPrem