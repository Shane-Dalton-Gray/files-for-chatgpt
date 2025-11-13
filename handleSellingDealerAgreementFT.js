let sellingDealerQuery = SellingDlrAgreement;
let generateSellingDealerFT = PrintSellingDlrAgreementFT;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

sellingDealerQuery.trigger(
  {
   onSuccess: () => {
     generateSellingDealerFT.trigger({
       onSuccess: () => {
         sellingDealerFTDisplayModal.open();
       }
     });
   } 
  }
);