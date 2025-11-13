<Modal
  id="modal29"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <TextInput
    id="URLSDTrans310FT23"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintSDTransferSheet310FT2.data.download_url}}"
  />
  <Button
    id="button73"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View SD Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintSDTransferSheet310FT2.data.download_url}}" }],
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
      pluginId="SaveTransferSheetsURLs310FTNoOwe"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button74"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy SD Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintSDTransferSheet310FT2.data.download_url}}" },
        ],
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
      pluginId="SaveTransferSheetsURLs310FTNoOwe"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame24"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintSDTransferSheet310FT2.data.html_url}}"
    title="{{ self.src }}"
  />
  <TextInput
    id="URLBDTrans310FTNoOwe"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintBDTransferSheet310FTNoOwe.data.download_url}}"
  />
  <Button
    id="button75"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View BD Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [
          { url: "{{PrintBDTransferSheet310FTNoOwe.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button76"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy BD Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintBDTransferSheet310FTNoOwe.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame25"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintBDTransferSheet310FTNoOwe.data.html_url}}"
    title="{{ self.src }}"
  />
  <Button
    id="button77"
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
    id="button78"
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
    id="iFrame26"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintFCSheetFT.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
