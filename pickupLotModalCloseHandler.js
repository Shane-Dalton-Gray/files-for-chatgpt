if (pickupLotAddr.invalid === true
   || pickupLotCity.invalid === true
   || pickupLotSt.invalid === true
   || pickupLotZip.invalid === true
   || pickupLotPhone.invalid === true
   || pickupLotContact.invalid === true)
{  
  utils.showNotification(
    { title: "Pickup Lot Validation Failed",
    description: "Disabled secondary pickup lot option",}
  );
  pickupLotCheckbox.resetValue();
}