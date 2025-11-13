let transferSheetQuery = TransferSheets2;
let generateSDTransferSheet310FT = PrintSDTransferSheet310FT2;
let generateBDTransferSheet310FTPrem = PrintBDTransferSheet310FTPremium;
let generateFCSheetFT = PrintFCSheetFT;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateSDTransferSheet310FT.trigger({
      onSuccess: () => {
        generateBDTransferSheet310FTPrem.trigger({
          onSuccess: () => {
            generateFCSheetFT.trigger({
              onSuccess: () => {
                modal25.open();
              }
            });
          }
        });
      }
    });
  }
});