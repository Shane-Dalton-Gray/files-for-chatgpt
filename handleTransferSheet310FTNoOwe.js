let transferSheetQuery = TransferSheets2;
let generateSDTransferSheet310FT = PrintSDTransferSheet310FT2;
let generateBDTransferSheet310FTNoOwe = PrintBDTransferSheet310FTNoOwe;
let generateFCSheetFT = PrintFCSheetFT;

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateSDTransferSheet310FT.trigger({
      onSuccess: () => {
        generateBDTransferSheet310FTNoOwe.trigger({
          onSuccess: () => {
            generateFCSheetFT.trigger({
              onSuccess: () => {
                modal29.open();
              }
            });
          }
        });
      }
    });
  }
});