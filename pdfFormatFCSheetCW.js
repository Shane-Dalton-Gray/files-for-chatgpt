const FCSheetCW = formatDataAsArray({{ TransferSheets2.data}})
const TransferSheets = formatDataAsArray({{ TransferSheets2.data}})

let newFCSheetCW = {};
let Units = [];


for(const i of FCSheetCW){
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
newFCSheetCW.SoldDate = TransferSheets[0].SoldDate
newFCSheetCW.LoadNumbers = TransferSheets[0].LoadNumbers
newFCSheetCW.ProjectNumber = TransferSheets[0].ProjectNumber
newFCSheetCW.SellingDlrName = TransferSheets[0].SellingDlrName
newFCSheetCW.SellingDlrNumber = TransferSheets[0].SellingDlrNumber
newFCSheetCW.SellingDlrAddress = TransferSheets[0].SellingDlrAddress
newFCSheetCW.SellingDlrCity = TransferSheets[0].SellingDlrCity
newFCSheetCW.SellingDlrSt = TransferSheets[0].SellingDlrSt
newFCSheetCW.SellingDlrZip = TransferSheets[0].SellingDlrZip
newFCSheetCW.SellingDlrPhone = TransferSheets[0].SellingDlrPhone 
newFCSheetCW.SellingDlrFax = TransferSheets[0].SellingDlrFax
newFCSheetCW.SellingDlrContact = TransferSheets[0].SellingDlrContact
newFCSheetCW.SellingDlrOwningRep = TransferSheets[0].SellingDlrOwningRep
newFCSheetCW.FreightCo = TransferSheets[0].FreightCo
newFCSheetCW.FreightCoContact = TransferSheets[0].FreightCoContact
newFCSheetCW.FreightCoPhone = TransferSheets[0].FreightCoPhone
newFCSheetCW.FreightAmt = TransferSheets[0].FreightAmt
newFCSheetCW.BuyingDlrName = TransferSheets[0].BuyingDlrName
newFCSheetCW.BuyingDlrNumber = TransferSheets[0].BuyingDlrNumber
newFCSheetCW.BuyingDlrAddress = TransferSheets[0].BuyingDlrAddress
newFCSheetCW.BuyingDlrCity = TransferSheets[0].BuyingDlrCity
newFCSheetCW.BuyingDlrSt = TransferSheets[0].BuyingDlrSt
newFCSheetCW.BuyingDlrZip = TransferSheets[0].BuyingDlrZip
newFCSheetCW.BuyingDlrPhone = TransferSheets[0].BuyingDlrPhone
newFCSheetCW.BuyingDlrFax = TransferSheets[0].BuyingDlrFax
newFCSheetCW.BuyingDlrContact = TransferSheets[0].BuyingDlrContact
newFCSheetCW.BuyingDlrOwningRep = TransferSheets[0].BuyingDlrOwningRep
newFCSheetCW.Units = Units

return newFCSheetCW