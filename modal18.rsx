<Modal
  id="modal18"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <TextInput
    id="URLTransFT2"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintTransferSheetFT2.data.download_url}}"
  />
  <Button
    id="button30"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintTransferSheetFT2.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="SaveTransferSheetURLsFT"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button31"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [{ value: "{{PrintTransferSheetFT2.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="SaveTransferSheetURLsFT"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame9"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintTransferSheetFT2.data.html_url}}"
    title="{{ self.src }}"
  />
  <Button
    id="button32"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View Freight Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{ ordered: [{ url: "{{PrintFCSheetFT.data.download_url}}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button33"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Freight Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{ ordered: [{ value: "{{PrintFCSheetFT.data.download_url}}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame10"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintFCSheetFT.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
