const SDTransferSheet310FT = formatDataAsArray({{ TransferSheets.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets.data}})

let newSDTransferSheet310FT = {};
let Units = [];


for(const i of SDTransferSheet310FT){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year,
    'OUInvoice':i.OUInvoice,
    'GivingOne':i.GivingOne,
    'GivingTwo':i.GivingTwo,
    'Age':i.DOM
  }

{
  Units.push(newItem);
}
}
newSDTransferSheet310FT.SoldDate = TransferSheets[0].SoldDate
newSDTransferSheet310FT.LoadNumbers = TransferSheets[0].LoadNumbers
newSDTransferSheet310FT.ProjectNumber = TransferSheets[0].ProjectNumber
newSDTransferSheet310FT.SellingDlrName = TransferSheets[0].SellingDlrName
newSDTransferSheet310FT.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newSDTransferSheet310FT.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newSDTransferSheet310FT.SellingDlrCity = TransferSheets[0].SellingDlrCity
newSDTransferSheet310FT.SellingDlrSt = TransferSheets[0].SellingDlrSt
newSDTransferSheet310FT.SellingDlrZip = TransferSheets[0].SellingDlrZip
newSDTransferSheet310FT.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newSDTransferSheet310FT.SellingDlrFax = TransferSheets[0].SellingDlrFax
newSDTransferSheet310FT.SellingDlrContact = TransferSheets[0].SellingDlrContact
newSDTransferSheet310FT.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newSDTransferSheet310FT.FreightCo = TransferSheets[0].FreightCo
newSDTransferSheet310FT.FreightCoContact = TransferSheets[0].FreightCoContact
newSDTransferSheet310FT.FreightCoPhone = TransferSheets[0].FreightCoPhone
newSDTransferSheet310FT.FreightAmt = TransferSheets[0].FreightAmt
newSDTransferSheet310FT.BuyingDlrName = TransferSheets[0].BuyingDlrName
newSDTransferSheet310FT.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newSDTransferSheet310FT.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newSDTransferSheet310FT.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newSDTransferSheet310FT.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newSDTransferSheet310FT.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newSDTransferSheet310FT.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newSDTransferSheet310FT.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newSDTransferSheet310FT.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newSDTransferSheet310FT.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newSDTransferSheet310FT.SumDifference = TransferSheets[0].SumDifference
newSDTransferSheet310FT.InvoiceColumnName = TransferSheets[0].InvoiceColumnName
newSDTransferSheet310FT.ColumnName261A = TransferSheets[0].ColumnName261A
newSDTransferSheet310FT.ColumnName65A = TransferSheets[0].ColumnName65A
newSDTransferSheet310FT.Units = Units

return newSDTransferSheet310FT