let transferSheetQuery = TransferSheets2;
let generateTransferSheetFT = PrintTransferSheetFT2;
let generateFCSheetFT = PrintFCSheetFT;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateTransferSheetFT.trigger({
      onSuccess: () => {
        generateFCSheetFT.trigger({
          onSuccess: () => {
            modal18.open();
          }
        });
      }
    });
  }
});