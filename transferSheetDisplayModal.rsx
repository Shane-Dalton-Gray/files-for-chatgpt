<Modal
  id="transferSheetDisplayModal"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <TextInput
    id="URLTransCW2"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintTransferSheetCW2.data.download_url}}"
  />
  <Button
    id="button20"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintTransferSheetCW2.data.download_url}}" }],
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
      pluginId="SaveTransferSheetURLsCW"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button21"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [{ value: "{{PrintTransferSheetCW2.data.download_url}}" }],
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
      pluginId="SaveTransferSheetURLsCW"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame4"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintTransferSheetCW2.data.html_url}}"
    title="{{ self.src }}"
  />
  <Button
    id="button22"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View Freight Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{ ordered: [{ url: "{{PrintFCSheetCW.data.download_url}}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button23"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy Freight Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{ ordered: [{ value: "{{PrintFCSheetCW.data.download_url}}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame5"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintFCSheetCW.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
