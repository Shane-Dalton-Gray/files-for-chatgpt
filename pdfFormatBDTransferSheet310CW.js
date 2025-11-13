const BDTransferSheet310CW = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newBDTransferSheet310CW = {};
let Units = [];


for(const i of BDTransferSheet310CW){
  const newItem = {
    'Un': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Yr': i.Year,
    'Invoice': i.Invoice,
    'Land': i.Landed,
    'Check':i.CheckPrice
   
  }

{
  Units.push(newItem);
}
}
newBDTransferSheet310CW.SoldDate = TransferSheets[0].SoldDate
newBDTransferSheet310CW.LoadNumbers = TransferSheets[0].LoadNumbers
newBDTransferSheet310CW.ProjectNumber = TransferSheets[0].ProjectNumber
newBDTransferSheet310CW.SellingDlrName = TransferSheets[0].SellingDlrName
newBDTransferSheet310CW.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newBDTransferSheet310CW.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newBDTransferSheet310CW.SellingDlrCity = TransferSheets[0].SellingDlrCity
newBDTransferSheet310CW.SellingDlrSt = TransferSheets[0].SellingDlrSt
newBDTransferSheet310CW.SellingDlrZip = TransferSheets[0].SellingDlrZip
newBDTransferSheet310CW.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newBDTransferSheet310CW.SellingDlrFax = TransferSheets[0].SellingDlrFax
newBDTransferSheet310CW.SellingDlrContact = TransferSheets[0].SellingDlrContact
newBDTransferSheet310CW.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newBDTransferSheet310CW.FreightCo = TransferSheets[0].FreightCo
newBDTransferSheet310CW.FreightCoContact = TransferSheets[0].FreightCoContact
newBDTransferSheet310CW.FreightCoPhone = TransferSheets[0].FreightCoPhone
newBDTransferSheet310CW.FreightAmt = TransferSheets[0].FreightAmt
newBDTransferSheet310CW.BuyingDlrName = TransferSheets[0].BuyingDlrName
newBDTransferSheet310CW.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newBDTransferSheet310CW.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newBDTransferSheet310CW.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newBDTransferSheet310CW.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newBDTransferSheet310CW.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newBDTransferSheet310CW.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newBDTransferSheet310CW.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newBDTransferSheet310CW.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newBDTransferSheet310CW.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newBDTransferSheet310CW.SumCheckPrice = TransferSheets[0].SumCheckPrice
newBDTransferSheet310CW.ColNameLand = TransferSheets[0].ColumnNameLand
newBDTransferSheet310CW.ColNameInv = TransferSheets[0].ColumnName310
newBDTransferSheet310CW.Units = Units

return newBDTransferSheet310CW