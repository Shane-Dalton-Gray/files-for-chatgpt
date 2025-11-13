<Modal
  id="modal20"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeight="1200"
  modalWidth="1200"
>
  <TextInput
    id="URLSDTrans310CWPrem2"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintSDTransferSheet310CWPrem2.data.download_url}}"
  />
  <Button
    id="button34"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View SD Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [
          { url: "{{PrintSDTransferSheet310CWPrem2.data.download_url}}" },
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
      pluginId="SaveTransferSheetsURLs310CWPrem"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button35"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy SD Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          { value: "{{PrintSDTransferSheet310CWPrem2.data.download_url}}" },
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
      pluginId="SaveTransferSheetsURLs310CWPrem"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame11"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintSDTransferSheet310CWPrem2.data.html_url}}"
    title="{{ self.src }}"
  />
  <TextInput
    id="URLBDTrans310CW2"
    hidden="true"
    label="URL"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    value="{{PrintBDTransferSheet310CW.data.download_url}}"
  />
  <Button
    id="button36"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="View BD Transfer Sheet PDF"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "{{PrintBDTransferSheet310CW.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button37"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Copy BD Transfer Sheet Link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [{ value: "{{PrintBDTransferSheet310CW.data.download_url}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <IFrame
    id="iFrame12"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintBDTransferSheet310CW.data.html_url}}"
    title="{{ self.src }}"
  />
  <Button
    id="button38"
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
    id="button39"
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
    id="iFrame13"
    _disclosedFields={{ array: [] }}
    allowSameOrigin={true}
    marginType="normal"
    src="{{PrintFCSheetCW.data.html_url}}"
    title="{{ self.src }}"
  />
</Modal>
