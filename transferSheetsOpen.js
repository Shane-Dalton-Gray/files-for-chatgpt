if (pickupLotCheckbox.value === false ||
   pickupLotCheckbox.disabled === true)
{
  await GetSellingDlrLotInfo.trigger();  
}

await TransferSheets.trigger();