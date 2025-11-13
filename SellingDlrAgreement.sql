call sp_tblProjects_SellingDlrAgreementDataGet(
  {{ttlSellPriceNumberInput.value}}, 
  {{ttlPurchasePriceNumberInput.value}},
  {{differenceNumberInput.value}},
  {{freightAmountNumberInput.value}},
  {{freightMethodSelect.value}},
  {{projectInput.value}},
  {{loadNumberSelect.value}}
);