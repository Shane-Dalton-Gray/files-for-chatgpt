let transferSheetQuery = TransferSheets2;
let generateTransferSheet = PrintTransferSheetCW2;
let generateFCSheet = PrintFCSheetCW;

if (pickupLotCheckbox.value === false ||
   pickupLotCheckbox.disabled === true)
{
  await GetSellingDlrLotInfo.trigger();  
}

//With how Retool oddly seems to handle promises with .then, we need to unfortunately approach callback hell

transferSheetQuery.trigger({
  onSuccess: () => {
    generateTransferSheet.trigger({
      onSuccess: () => {
        generateFCSheet.trigger({
          onSuccess: () => {
            transferSheetDisplayModal.open();
          } 
        });
      }
    });
  }
});