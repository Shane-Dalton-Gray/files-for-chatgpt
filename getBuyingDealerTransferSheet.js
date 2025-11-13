var docType;
var eid = loadNumberSelect.value;
var data;

switch(paymentTypeSelect.value){
  case("Check Writer"):
    docType = "transfer-sheet-bd-cw"
    break;
  case("Floor Transfer"):
    docType = "transfer-sheet-bd-ft"
    break;
  default:
}

_ = await createPDF.trigger({
  additionalScope:{
    entityId:eid,
    docType: docType
  },
  onSuccess:function(d){
          data = d
  }
})
return data
