let transferSheetQuery = TransferSheets2;
let generateSDTransferSheet310CW = PrintSDTransferSheet310CW2;
let generateBDTransferSheet310CW = PrintBDTransferSheet310CW;
let generateFCSheetCW = PrintFCSheetCW;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateSDTransferSheet310CW.trigger({
      onSuccess: () => {
        generateBDTransferSheet310CW.trigger({
          onSuccess: () => {
            generateFCSheetCW.trigger({
              onSuccess: () => {
                transferSheetModal.open();
              }
            });
          }
        });
      }
    });
  }
});