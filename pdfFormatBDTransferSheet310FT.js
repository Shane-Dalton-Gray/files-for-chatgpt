const BDTransferSheet310FT = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newBDTransferSheet310FT = {};
let Units = [];


for(const i of BDTransferSheet310FT){
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
newBDTransferSheet310FT.SoldDate = TransferSheets[0].SoldDate
newBDTransferSheet310FT.LoadNumbers = TransferSheets[0].LoadNumbers
newBDTransferSheet310FT.ProjectNumber = TransferSheets[0].ProjectNumber
newBDTransferSheet310FT.SellingDlrName = TransferSheets[0].SellingDlrName
newBDTransferSheet310FT.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newBDTransferSheet310FT.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newBDTransferSheet310FT.SellingDlrCity = TransferSheets[0].SellingDlrCity
newBDTransferSheet310FT.SellingDlrSt = TransferSheets[0].SellingDlrSt
newBDTransferSheet310FT.SellingDlrZip = TransferSheets[0].SellingDlrZip
newBDTransferSheet310FT.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newBDTransferSheet310FT.SellingDlrFax = TransferSheets[0].SellingDlrFax
newBDTransferSheet310FT.SellingDlrContact = TransferSheets[0].SellingDlrContact
newBDTransferSheet310FT.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newBDTransferSheet310FT.FreightCo = TransferSheets[0].FreightCo
newBDTransferSheet310FT.FreightCoContact = TransferSheets[0].FreightCoContact
newBDTransferSheet310FT.FreightCoPhone = TransferSheets[0].FreightCoPhone
newBDTransferSheet310FT.FreightAmt = TransferSheets[0].FreightAmt
newBDTransferSheet310FT.BuyingDlrName = TransferSheets[0].BuyingDlrName
newBDTransferSheet310FT.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newBDTransferSheet310FT.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newBDTransferSheet310FT.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newBDTransferSheet310FT.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newBDTransferSheet310FT.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newBDTransferSheet310FT.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newBDTransferSheet310FT.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newBDTransferSheet310FT.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newBDTransferSheet310FT.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newBDTransferSheet310FT.SumLandedPos = TransferSheets[0].SumLandedPos
newBDTransferSheet310FT.Units = Units

return newBDTransferSheet310FT