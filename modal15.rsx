<Modal
  id="modal15"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <Button
    id="button18"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintSellingDlrAgreementCW.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button19"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintSellingDlrAgreementCW.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame3"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintSellingDlrAgreementCW.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
