<Modal
  id="modal23"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "SelectLoadToDelete" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  hidden="true"
  modalHeight="400"
>
  <Text
    id="text84"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ background: "rgb(255, 255, 0)" }] }}
    value="### **CAUTION:This will delete the chosen unit from the Soldloads and Project tables!**"
    verticalAlign="center"
  />
  <Select
    id="select5"
    data="{{ SelectLoadToDelete.data }}"
    emptyMessage="No options"
    label="Select Load"
    labelPosition="top"
    marginType="normal"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
    value=""
    values="{{item.LoadNumber}}"
  >
    <Option id="f3ac6" value="Option 1" />
    <Option id="1c2cd" value="Option 2" />
    <Option id="fe30e" value="Option 3" />
    <Event
      event="change"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="SelectUnitToDelete"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Select>
  <Select
    id="select4"
    data="{{ SelectUnitToDelete.data }}"
    emptyMessage="No options"
    label="Select Unit"
    labelPosition="top"
    marginType="normal"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
    value={'""'}
    values="{{item.unit}}"
  />
  <Button
    id="button54"
    _disclosedFields={{ array: ["background"] }}
    marginType="normal"
    style={{ ordered: [{ background: "success" }] }}
    text="Delete"
  >
    <Event
      enabled={'{{select5.value!=null&&select4.value!=""}}'}
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="DeleteUnitSoldloads"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled={'{{select5.value==null||select4.value==""}}'}
      event="click"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { description: "Load and Unit MUST Be Selected" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
