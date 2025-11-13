const SDTransferSheet310CW = formatDataAsArray({{ TransferSheets.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets.data}})

let newSDTransferSheet310CW = {};
let Units = [];


for(const i of SDTransferSheet310CW){
  const newItem = {
    'Un': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Yr': i.Year,
    'Invoice': i.Invoice,
    'GiveOne': i.GivingOne,
    'GiveTwo': i.GivingTwo,
    'OUInv':i.OUInvoice,
    'Sale':i.SalePrice,
    'Check':i.CheckPrice,
    'Diff':i.Difference,
    'DOM':i.DOM
   
  }

{
  Units.push(newItem);
}
}
newSDTransferSheet310CW.SoldDate = TransferSheets[0].SoldDate
newSDTransferSheet310CW.LoadNumbers = TransferSheets[0].LoadNumbers
newSDTransferSheet310CW.ProjectNumber = TransferSheets[0].ProjectNumber
newSDTransferSheet310CW.SellingDlrName = TransferSheets[0].SellingDlrName
newSDTransferSheet310CW.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newSDTransferSheet310CW.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newSDTransferSheet310CW.SellingDlrCity = TransferSheets[0].SellingDlrCity
newSDTransferSheet310CW.SellingDlrSt = TransferSheets[0].SellingDlrSt
newSDTransferSheet310CW.SellingDlrZip = TransferSheets[0].SellingDlrZip
newSDTransferSheet310CW.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newSDTransferSheet310CW.SellingDlrFax = TransferSheets[0].SellingDlrFax
newSDTransferSheet310CW.SellingDlrContact = TransferSheets[0].SellingDlrContact
newSDTransferSheet310CW.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newSDTransferSheet310CW.FreightCo = TransferSheets[0].FreightCo
newSDTransferSheet310CW.FreightCoContact = TransferSheets[0].FreightCoContact
newSDTransferSheet310CW.FreightCoPhone = TransferSheets[0].FreightCoPhone
newSDTransferSheet310CW.FreightAmt = TransferSheets[0].FreightAmt
newSDTransferSheet310CW.BuyingDlrName = TransferSheets[0].BuyingDlrName
newSDTransferSheet310CW.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newSDTransferSheet310CW.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newSDTransferSheet310CW.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newSDTransferSheet310CW.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newSDTransferSheet310CW.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newSDTransferSheet310CW.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newSDTransferSheet310CW.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newSDTransferSheet310CW.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newSDTransferSheet310CW.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newSDTransferSheet310CW.SumSalePrice = TransferSheets[0].SumSalePrice
newSDTransferSheet310CW.SumCheckPrice = TransferSheets[0].SumCheckPrice
newSDTransferSheet310CW.SumDifference = TransferSheets[0].SumDifference
newSDTransferSheet310CW.ColName310 = TransferSheets[0].ColumnName310
newSDTransferSheet310CW.ColNameInv = TransferSheets[0].InvoiceColumnName
newSDTransferSheet310CW.ColName261A = TransferSheets[0].ColumnName261A
newSDTransferSheet310CW.ColName65A = TransferSheets[0].ColumnName65A
newSDTransferSheet310CW.Units = Units

return newSDTransferSheet310CW