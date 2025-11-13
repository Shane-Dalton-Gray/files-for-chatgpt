if(!sellingDealerPrimaryContact.value){
  sellingPrimaryContactWarningHidden.setValue(false)
} else {
  sellingPrimaryContactWarningHidden.setValue(true)
  generateSellingDealerAgreement.trigger();
}