let transferSheetQuery = TransferSheets2;
let generateSDTransferSheet310CWPrem = PrintSDTransferSheet310CWPrem2;
let generateBDTransferSheet310CWPrem = PrintBDTransferSheet310CW;
let generateFCSheetCW = PrintFCSheetCW;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateSDTransferSheet310CWPrem.trigger({
      onSuccess: () => {
        generateBDTransferSheet310CWPrem.trigger({
          onSuccess: () => {
            generateFCSheetCW.trigger({
              onSuccess: () => {
                modal20.open();
              }
            });
          }
        });
      }
    });
  }
});