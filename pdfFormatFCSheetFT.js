const FCSheetFT = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newFCSheetFT = {};
let Units = [];


for(const i of FCSheetFT){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VINRT,
    'Year': i.Year,
    'HB': i["HB Seller Is Giving Up"],
    'GivingOne': i["261A Seller Is Giving Up"],
    'GivingTwo': i["65A Seller Is Giving Up"]
   
  }

{
  Units.push(newItem);
}
}
newFCSheetFT.SoldDate = TransferSheets[0].SoldDate
newFCSheetFT.LoadNumbers = TransferSheets[0].LoadNumbers
newFCSheetFT.ProjectNumber = TransferSheets[0].ProjectNumber
newFCSheetFT.SellingDlrName = TransferSheets[0].SellingDlrName
newFCSheetFT.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newFCSheetFT.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newFCSheetFT.SellingDlrCity = TransferSheets[0].SellingDlrCity
newFCSheetFT.SellingDlrSt = TransferSheets[0].SellingDlrSt
newFCSheetFT.SellingDlrZip = TransferSheets[0].SellingDlrZip
newFCSheetFT.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newFCSheetFT.SellingDlrFax = TransferSheets[0].SellingDlrFax
newFCSheetFT.SellingDlrContact = TransferSheets[0].SellingDlrContact
newFCSheetFT.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newFCSheetFT.FreightCo = TransferSheets[0].FreightCo
newFCSheetFT.FreightCoContact = TransferSheets[0].FreightCoContact
newFCSheetFT.FreightCoPhone = TransferSheets[0].FreightCoPhone
newFCSheetFT.FreightAmt = TransferSheets[0].FreightAmt
newFCSheetFT.BuyingDlrName = TransferSheets[0].BuyingDlrName
newFCSheetFT.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newFCSheetFT.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newFCSheetFT.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newFCSheetFT.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newFCSheetFT.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newFCSheetFT.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newFCSheetFT.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newFCSheetFT.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newFCSheetFT.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newFCSheetFT.Units = Units

return newFCSheetFT