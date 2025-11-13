<Modal
  id="pickupLotModal"
  buttonText="Open Modal"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "GetSellingDlrLotInfo" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
        {
          enabled:
            "{{ \n\tpickupLotAddr.invalid === true ||  \n\tpickupLotCity.invalid === true ||\n\tpickupLotSt.invalid === true ||\n\tpickupLotZip.invalid === true ||\n\tpickupLotPhone.invalid === true ||\n\tpickupLotContact.invalid === true ||\n\tsellingDlrLotInfo.value.SellingDlrAddress == null ||\n\tsellingDlrLotInfo.value.SellingDlrSt == null ||\n\tsellingDlrLotInfo.value.SellingDlrCity == null ||\n\tsellingDlrLotInfo.value.SellingDlrZip == null ||\n\tsellingDlrLotInfo.value.SellingDlrPhone == null ||\n\tsellingDlrLotInfo.value.SellingDlrContact == null\n}}",
        },
      ],
    },
    {
      ordered: [
        { method: "trigger" },
        { enabled: "" },
        { params: { ordered: [] } },
        { targetId: null },
        { pluginId: "pickupLotModalCloseHandler" },
        { waitType: "debounce" },
        { event: "close" },
        { type: "datasource" },
        { waitMs: "0" },
      ],
    },
  ]}
  hidden="true"
  margin="4px 8px"
  marginType="normal"
  modalHeight="500"
  modalHeightType="auto"
  modalOverflowType="hidden"
  modalWidth="500"
  style={{ ordered: [] }}
>
  <HTML
    id="pickupLotModalTitle"
    css={include("../lib/pickupLotModalTitle.css", "string")}
    html={'<div class="pickupLotTitle"><h3>Pickup Lot Details*</h3>'}
    marginType="normal"
  />
  <EditableText
    id="pickupLotAddr"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Pickup Lot Address"
    label="Address"
    marginType="normal"
    minLength="1"
    placeholder="Enter value"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrAddress[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrAddress", 0], pickupLotAddr.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <EditableText
    id="pickupLotCity"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Pickup Lot City"
    label="City"
    marginType="normal"
    minLength="1"
    pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrCity[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrCity", 0], pickupLotCity.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <EditableText
    id="pickupLotSt"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Pickup Lot State"
    label="State"
    marginType="normal"
    maxLength="2"
    minLength="2"
    pattern="^[A-Z]+"
    patternType="regex"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrSt[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrSt", 0], pickupLotSt.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <EditableText
    id="pickupLotZip"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Enter a valid 5 digit zip code"
    label="Zip"
    marginType="normal"
    maxLength="5"
    minLength="5"
    pattern="^\d{5}"
    patternType="regex"
    placeholder="00000"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrZip[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrZip", 0], pickupLotZip.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <EditableText
    id="pickupLotPhone"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Phone Number Format: (555) 555-5555"
    label="Phone"
    marginType="normal"
    maxLength="14"
    minLength="14"
    pattern="^\(?([0-9]{3})\) ?([0-9]{3})[-.●]?([0-9]{4})$"
    patternType="regex"
    placeholder="(000) 000-0000"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrPhone[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrPhone", 0], pickupLotPhone.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <EditableText
    id="pickupLotContact"
    editIcon="bold/interface-edit-write-1"
    inputTooltip="Dealer Contact Name"
    label="Contact"
    marginType="normal"
    minLength="1"
    placeholder="John Smith"
    required={true}
    showClear={true}
    textSize="default"
    value="{{ sellingDlrLotInfo.value.SellingDlrContact[0] }}"
  >
    <Event
      event="change"
      method="run"
      params={{
        ordered: [
          {
            src: 'await sellingDlrLotInfo.setIn(["SellingDlrContact", 0], pickupLotContact.value);',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </EditableText>
  <Button id="pickupLotResetBtn" marginType="normal" text="Reset Values">
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetSellingDlrLotInfo"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <HTML
    id="pickupLotModalFootnote"
    css={include("../lib/pickupLotModalFootnote.css", "string")}
    html={include("../lib/pickupLotModalFootnote.html", "string")}
    marginType="normal"
  />
</Modal>
