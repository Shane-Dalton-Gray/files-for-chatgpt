<Modal
  id="sellingDealerFTDisplayModal"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <Button
    id="button67"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintSellingDlrAgreementFT.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button68"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintSellingDlrAgreementFT.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame23"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintSellingDlrAgreementFT.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
