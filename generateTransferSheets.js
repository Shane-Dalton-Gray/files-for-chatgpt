const result = await Promise.all([getSellingDealerTransferSheet.trigger(), getBuyingDealerTransferSheet.trigger(), getFreightCarrierTransferSheet.trigger()])

transferSheetModal.open()

return result