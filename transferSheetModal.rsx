<Modal
  id="transferSheetModal"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  events={[]}
  hidden="true"
  margin="0"
  marginType="none"
  modalHeight="1200"
  modalOverflowType="visible"
  modalWidth="1200"
>
  <Button
    id="copySDTSURLButton"
    horizontalAlign="center"
    iconBefore="bold/interface-edit-copy"
    marginType="normal"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="SD"
    tooltipText="Copy URL for Selling Dealer Transfer Sheet"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          {
            value:
              "{{getSellingDealerTransferSheet.data.savedDocument.downloadUrl}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="copyBDTSURLButton"
    horizontalAlign="center"
    iconBefore="bold/interface-edit-copy"
    marginType="normal"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="BD"
    tooltipText="Copy URL for Buying Dealer Transfer Sheet"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          {
            value:
              "{{getBuyingDealerTransferSheet.data.savedDocument.downloadUrl}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="copyFCTSURLButton"
    horizontalAlign="center"
    iconBefore="bold/interface-edit-copy"
    marginType="normal"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="FC"
    tooltipText="Copy URL for Freight Carrier Transfer Sheet"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          {
            value:
              "{{getFreightCarrierTransferSheet.data.savedDocument.downloadUrl}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Tabs
    id="transferSheetTabs"
    itemMode="static"
    marginType="normal"
    targetContainerId="container1"
    value="{{ self.values[0] }}"
  >
    <Option id="41517" value="Selling Dealer" />
    <Option id="fe512" value="Buying Dealer" />
    <Option id="3ae3a" value="Freight Carrier" />
  </Tabs>
  <Module
    id="sdTransferSheetDocDetail"
    documentId="{{getSellingDealerTransferSheet.data.savedDocument.id}}"
    enableSendToEsign="false"
    hidden="{{transferSheetTabs.selectedIndex !== 0}}"
    margin="0"
    name="DocumentDetailModule"
    overflowType="scroll"
    pageUuid="19f893c8-cb9e-11ee-be4e-cbb39d86146a"
  />
  <Module
    id="bdTransferSheetDocDetail"
    documentId="{{getBuyingDealerTransferSheet.data.savedDocument.id}}"
    enableSendToEsign="false"
    hidden="{{transferSheetTabs.selectedIndex !== 1}}"
    margin="0"
    name="DocumentDetailModule"
    overflowType="scroll"
    pageUuid="19f893c8-cb9e-11ee-be4e-cbb39d86146a"
  />
  <Module
    id="fcTransferSheetDocDetail"
    documentId="{{getFreightCarrierTransferSheet.data.savedDocument.id}}"
    enableSendToEsign="false"
    hidden="{{transferSheetTabs.selectedIndex !== 2}}"
    margin="0"
    name="DocumentDetailModule"
    overflowType="scroll"
    pageUuid="19f893c8-cb9e-11ee-be4e-cbb39d86146a"
  />
</Modal>
