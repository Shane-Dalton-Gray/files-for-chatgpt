const BDTransferSheet310FTPremium = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newBDTransferSheet310FTPremium = {};
let Units = [];


for(const i of BDTransferSheet310FTPremium){
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
newBDTransferSheet310FTPremium.SoldDate = TransferSheets[0].SoldDate
newBDTransferSheet310FTPremium.LoadNumbers = TransferSheets[0].LoadNumbers
newBDTransferSheet310FTPremium.ProjectNumber = TransferSheets[0].ProjectNumber
newBDTransferSheet310FTPremium.SellingDlrName = TransferSheets[0].SellingDlrName
newBDTransferSheet310FTPremium.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newBDTransferSheet310FTPremium.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newBDTransferSheet310FTPremium.SellingDlrCity = TransferSheets[0].SellingDlrCity
newBDTransferSheet310FTPremium.SellingDlrSt = TransferSheets[0].SellingDlrSt
newBDTransferSheet310FTPremium.SellingDlrZip = TransferSheets[0].SellingDlrZip
newBDTransferSheet310FTPremium.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newBDTransferSheet310FTPremium.SellingDlrFax = TransferSheets[0].SellingDlrFax
newBDTransferSheet310FTPremium.SellingDlrContact = TransferSheets[0].SellingDlrContact
newBDTransferSheet310FTPremium.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newBDTransferSheet310FTPremium.FreightCo = TransferSheets[0].FreightCo
newBDTransferSheet310FTPremium.FreightCoContact = TransferSheets[0].FreightCoContact
newBDTransferSheet310FTPremium.FreightCoPhone = TransferSheets[0].FreightCoPhone
newBDTransferSheet310FTPremium.FreightAmt = TransferSheets[0].FreightAmt
newBDTransferSheet310FTPremium.BuyingDlrName = TransferSheets[0].BuyingDlrName
newBDTransferSheet310FTPremium.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newBDTransferSheet310FTPremium.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newBDTransferSheet310FTPremium.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newBDTransferSheet310FTPremium.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newBDTransferSheet310FTPremium.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newBDTransferSheet310FTPremium.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newBDTransferSheet310FTPremium.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newBDTransferSheet310FTPremium.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newBDTransferSheet310FTPremium.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newBDTransferSheet310FTPremium.SumLanded = TransferSheets[0].SumLanded
newBDTransferSheet310FTPremium.Units = Units

return newBDTransferSheet310FTPremium