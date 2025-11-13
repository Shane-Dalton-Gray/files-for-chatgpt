const SellingDlrAgreement = formatDataAsArray({{ SellingDlrAgreement.data}})

let newSellingDlrAgreement = {};
let Units = [];


for(const i of SellingDlrAgreement){
  const newItem = {
    'Unit': i.Unit,
    'Description': i.Description,
    'VinRt': i.VinRt,
    'Year': i.Year,
    'Invoice': i.Invoice,
    'OUInvoice': i.OUInvoice,
    'GivingOne': i.GivingOne,
    'GivingTwo': i.GivingTwo,
    'CheckPrice': i.CheckPrice,
    'SalePrice': i.SalePrice,
    'Difference': i.Difference,
    'DOM':i.DOM
   
  }

{
  Units.push(newItem);
}
}
newSellingDlrAgreement.ProjectNumber = SellingDlrAgreement[0].ProjectNumber
newSellingDlrAgreement.LoadNumbers =SellingDlrAgreement [0].LoadNumbers
newSellingDlrAgreement.OwningRep = SellingDlrAgreement[0].SellingDlrOwningRep
newSellingDlrAgreement.DTNNumber = SellingDlrAgreement[0].SellingDlrNumber
newSellingDlrAgreement.DealerName = SellingDlrAgreement[0].SellingDlrName
newSellingDlrAgreement.Address = SellingDlrAgreement[0].SellingDlrAddress
newSellingDlrAgreement.City = SellingDlrAgreement[0].SellingDlrCity
newSellingDlrAgreement.St = SellingDlrAgreement[0].SellingDlrSt
newSellingDlrAgreement.Zip = SellingDlrAgreement[0].SellingDlrZip
newSellingDlrAgreement.Phone = SellingDlrAgreement[0].SellingDlrPhone
newSellingDlrAgreement.Fax = SellingDlrAgreement[0].SellingDlrFax
newSellingDlrAgreement.Contact = SellingDlrAgreement[0].SellingDlrContact
newSellingDlrAgreement.SumCheckPrice = SellingDlrAgreement[0].SumCheckPrice
newSellingDlrAgreement.SumSalePrice = SellingDlrAgreement[0].SumSalePrice
newSellingDlrAgreement.SumDifference = SellingDlrAgreement[0].SumDifference
newSellingDlrAgreement.ColumnName310 = SellingDlrAgreement[0]['310ColumnName']  
newSellingDlrAgreement.ColumnNameInv = SellingDlrAgreement[0]['InvoiceColumnName']
newSellingDlrAgreement.ColumnName261A = SellingDlrAgreement[0]['261AColumnName']
newSellingDlrAgreement.ColumnName65A = SellingDlrAgreement[0]['65AColumnName'] 
newSellingDlrAgreement.Units = Units



return newSellingDlrAgreement