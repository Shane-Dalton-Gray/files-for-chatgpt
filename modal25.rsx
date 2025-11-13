<Modal
  id="modal25"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <TextInput
    id="URLSDTrans310FT22"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintSDTransferSheet310FT2.data.download_url}}"
  />
  <Button
    id="button55"
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
      pluginId="SaveTransferSheetsURLs310FTPrem2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button56"
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
      pluginId="SaveTransferSheetsURLs310FTPrem2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame20"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintSDTransferSheet310FT2.data.html_url}}"
    title="{{ self.src }}"
  />
  <TextInput
    id="URLBDTrans310FTPrem2"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintBDTransferSheet310FTPremium.data.download_url}}"
  />
  <Button
    id="button57"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View BD Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [
          { url: "{{PrintBDTransferSheet310FTPremium.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button58"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy BD Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintBDTransferSheet310FTPremium.data.download_url}}" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame21"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintBDTransferSheet310FTPremium.data.html_url}}"
    title="{{ self.src }}"
  />
  <Button
    id="button59"
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
    id="button60"
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
    id="iFrame22"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintFCSheetFT.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
