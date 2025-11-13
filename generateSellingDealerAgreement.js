var docType;
var eid = loadNumberSelect.value;
var data;

switch(paymentTypeSelect.value){
  case("Check Writer"):
    docType = 'selling-dealer-agreementCW'
    break;
  case("Floor Transfer"):
    docType = 'selling-dealer-agreementFT'
    break;
  default:
}

_ = await createPDF.trigger({
  additionalScope:{
    entityId:eid,
    docType: docType
  },
  onSuccess:function(d){
    // if the function returned successful we will have data here
    if (d)
    {
      data = d
      sdaModal.open()
    }
  }
})
return data
