let sellingDealerQuery = SellingDlrAgreement;
let generateSellingDealerCW = PrintSellingDlrAgreementCW;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

sellingDealerQuery.trigger(
  {
   onSuccess: () => {
     generateSellingDealerCW.trigger({
       onSuccess: () => {
         modal15.open();
       }
     });
   } 
  }
);