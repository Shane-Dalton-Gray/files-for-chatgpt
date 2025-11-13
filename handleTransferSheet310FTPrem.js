let transferSheetQuery = TransferSheets2;
let generateSDTransferSheet310FTPrem = PrintSDTransferSheet310FTPrem2;
let generateBDTransferSheet310FTPrem = PrintBDTransferSheet310FTPremium;
let generateFCSheetFT = PrintFCSheetFT;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateSDTransferSheet310FTPrem.trigger({
      onSuccess: () => {
        generateBDTransferSheet310FTPrem.trigger({
          onSuccess: () => {
            generateFCSheetFT.trigger({
              onSuccess: () => {
                modal21.open();
              }
            });
          }
        });
      }
    });
  }
});