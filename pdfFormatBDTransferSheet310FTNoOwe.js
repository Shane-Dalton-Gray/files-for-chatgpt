const BDTransferSheet310FTNoOwe = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newBDTransferSheet310FTNoOwe = {};
let Units = [];


for(const i of BDTransferSheet310FTNoOwe){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year
    
  }

{
  Units.push(newItem);
}
}
newBDTransferSheet310FTNoOwe.SoldDate = TransferSheets[0].SoldDate
newBDTransferSheet310FTNoOwe.LoadNumbers = TransferSheets[0].LoadNumbers
newBDTransferSheet310FTNoOwe.ProjectNumber = TransferSheets[0].ProjectNumber
newBDTransferSheet310FTNoOwe.SellingDlrName = TransferSheets[0].SellingDlrName
newBDTransferSheet310FTNoOwe.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newBDTransferSheet310FTNoOwe.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newBDTransferSheet310FTNoOwe.SellingDlrCity = TransferSheets[0].SellingDlrCity
newBDTransferSheet310FTNoOwe.SellingDlrSt = TransferSheets[0].SellingDlrSt
newBDTransferSheet310FTNoOwe.SellingDlrZip = TransferSheets[0].SellingDlrZip
newBDTransferSheet310FTNoOwe.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newBDTransferSheet310FTNoOwe.SellingDlrFax = TransferSheets[0].SellingDlrFax
newBDTransferSheet310FTNoOwe.SellingDlrContact = TransferSheets[0].SellingDlrContact
newBDTransferSheet310FTNoOwe.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newBDTransferSheet310FTNoOwe.FreightCo = TransferSheets[0].FreightCo
newBDTransferSheet310FTNoOwe.FreightCoContact = TransferSheets[0].FreightCoContact
newBDTransferSheet310FTNoOwe.FreightCoPhone = TransferSheets[0].FreightCoPhone
newBDTransferSheet310FTNoOwe.FreightAmt = TransferSheets[0].FreightAmt
newBDTransferSheet310FTNoOwe.BuyingDlrName = TransferSheets[0].BuyingDlrName
newBDTransferSheet310FTNoOwe.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newBDTransferSheet310FTNoOwe.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newBDTransferSheet310FTNoOwe.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newBDTransferSheet310FTNoOwe.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newBDTransferSheet310FTNoOwe.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newBDTransferSheet310FTNoOwe.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newBDTransferSheet310FTNoOwe.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newBDTransferSheet310FTNoOwe.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newBDTransferSheet310FTNoOwe.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newBDTransferSheet310FTNoOwe.SumLanded = TransferSheets[0].SumLanded
newBDTransferSheet310FTNoOwe.Units = Units

return newBDTransferSheet310FTNoOwe