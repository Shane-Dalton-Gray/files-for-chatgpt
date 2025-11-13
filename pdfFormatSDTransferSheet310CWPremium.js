const SDTransferSheet310CWPrem = formatDataAsArray({{ TransferSheets.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets.data}})

let newSDTransferSheet310CWPrem = {};
let Units = [];


for(const i of SDTransferSheet310CWPrem){
  const newItem = {
    'Un': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Yr': i.Year,
    'OUInv':i.OUInvoice,
    'DOM':i.DOM,
    'Invoice':i.Invoice,
    'Sale':i.SalePrice,
    'Check':i.CheckPrice,
    'Diff':i.NegativeDifference,
  }

{
  Units.push(newItem);
}
}
newSDTransferSheet310CWPrem.SoldDate = TransferSheets[0].SoldDate
newSDTransferSheet310CWPrem.LoadNumbers = TransferSheets[0].LoadNumbers
newSDTransferSheet310CWPrem.ProjectNumber = TransferSheets[0].ProjectNumber
newSDTransferSheet310CWPrem.SellingDlrName = TransferSheets[0].SellingDlrName
newSDTransferSheet310CWPrem.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newSDTransferSheet310CWPrem.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newSDTransferSheet310CWPrem.SellingDlrCity = TransferSheets[0].SellingDlrCity
newSDTransferSheet310CWPrem.SellingDlrSt = TransferSheets[0].SellingDlrSt
newSDTransferSheet310CWPrem.SellingDlrZip = TransferSheets[0].SellingDlrZip
newSDTransferSheet310CWPrem.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newSDTransferSheet310CWPrem.SellingDlrFax = TransferSheets[0].SellingDlrFax
newSDTransferSheet310CWPrem.SellingDlrContact = TransferSheets[0].SellingDlrContact
newSDTransferSheet310CWPrem.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newSDTransferSheet310CWPrem.FreightCo = TransferSheets[0].FreightCo
newSDTransferSheet310CWPrem.FreightCoContact = TransferSheets[0].FreightCoContact
newSDTransferSheet310CWPrem.FreightCoPhone = TransferSheets[0].FreightCoPhone
newSDTransferSheet310CWPrem.FreightAmt = TransferSheets[0].FreightAmt
newSDTransferSheet310CWPrem.BuyingDlrName = TransferSheets[0].BuyingDlrName
newSDTransferSheet310CWPrem.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newSDTransferSheet310CWPrem.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newSDTransferSheet310CWPrem.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newSDTransferSheet310CWPrem.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newSDTransferSheet310CWPrem.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newSDTransferSheet310CWPrem.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newSDTransferSheet310CWPrem.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newSDTransferSheet310CWPrem.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newSDTransferSheet310CWPrem.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newSDTransferSheet310CWPrem.SumDifferenceNeg = TransferSheets[0].SumDifferenceNeg
newSDTransferSheet310CWPrem.ColName310 = TransferSheets[0].ColumnName310
newSDTransferSheet310CWPrem.ColNameInv = TransferSheets[0].InvoiceColumnName
newSDTransferSheet310CWPrem.SumDifferenceNeg = TransferSheets[0].SumDifferenceNeg
newSDTransferSheet310CWPrem.SumSalePrice = TransferSheets[0].SumSalePrice
newSDTransferSheet310CWPrem.SumCheckPrice = TransferSheets[0].SumCheckPrice
newSDTransferSheet310CWPrem.Units = Units

return newSDTransferSheet310CWPrem