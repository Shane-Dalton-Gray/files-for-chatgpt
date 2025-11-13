<Container
  id="container1"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{ ordered: [{ border: "#ffffff" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="Load Details
"
      verticalAlign="center"
    />
  </Header>
  <View id="07f6c" viewKey="View 1">
    <Select
      id="loadNumberSelect"
      _defaultValue={null}
      allowDeselect={true}
      automaticOptionColors={false}
      captionByIndex=""
      data="{{ SelectLoad.data['Load #'] }}"
      disabledByIndex=""
      hiddenByIndex=""
      label="Select Load #"
      labelPosition="top"
      labels=""
      labelWidth="25

"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="null"
      values=""
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="FreightData"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="TTLSellPrice"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="TTLLandedUnder"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="TTL310"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="GetMake"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{paymentTypeSelect.value != null}}"
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="TTLPurchasePrice"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{paymentTypeSelect.value != null}}"
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="Difference"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
      <Option id="0002" />
    </Select>
    <Select
      id="paymentTypeSelect"
      _defaultValue={null}
      allowDeselect={true}
      automaticOptionColors={false}
      data="['Check Writer','Floor Transfer']"
      label="Select Payment Type
"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="Difference"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="TTLPurchasePrice"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
      <Option id="0002" />
    </Select>
    <Container
      id="container3"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="0"
      paddingType="none"
      showBody={true}
      showBorder={false}
      showHeader="false"
    >
      <View id="1bddd" viewKey="View 1">
        <Text
          id="threeTenTitle"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          hidden="true"
          marginType="normal"
          value="310"
          verticalAlign="center"
        />
        <Text
          id="pickupLotTitle"
          hidden="{{hideSecondaryLot.value}}"
          marginType="normal"
          style={{ ordered: [] }}
          value="Lot P/U"
          verticalAlign="center"
        />
        <Checkbox
          id="pickupLotCheckbox"
          disabled={
            '{{ loadNumberSelect.selectedItem === null || \nfreightMethodSelect.selectedItem === null || freightMethodSelect.selectedItem.value != "Logistics Land Cartage" }}'
          }
          hidden="{{hideSecondaryLot.value}}"
          label=""
          labelWidth={100}
          marginType="normal"
          tooltipText="Select for different  pick-up location"
        >
          <Event
            enabled="{{ !pickupLotCheckbox.disabled }}"
            event="true"
            method="open"
            params={{ ordered: [] }}
            pluginId="pickupLotModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Checkbox>
      </View>
    </Container>
    <NumberInput
      id="ttlSellPriceNumberInput"
      _defaultValue={null}
      _disclosedFields={{ array: [] }}
      currency="USD"
      decimalPlaces="2"
      format="currency"
      formDataKey=""
      label="TTL Sell Price"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      showSeparators={true}
      value="{{TTLSellPrice.data.TTLSellPrice}}"
    />
    <NumberInput
      id="ttlPurchasePriceNumberInput"
      _defaultValue={null}
      _disclosedFields={{ array: [] }}
      currency="USD"
      decimalPlaces="2"
      format="currency"
      formDataKey=""
      label="TTL Purchase Price"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      showSeparators={true}
      value="{{TTLPurchasePrice.data.TTLPurchasePrice}}"
    />
    <NumberInput
      id="differenceNumberInput"
      _defaultValue={null}
      _disclosedFields={{ array: [] }}
      currency="USD"
      decimalPlaces="2"
      format="currency"
      label="Difference"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      showSeparators={true}
      textAlign="right"
      value="{{Difference.data.Difference}}"
    />
    <NumberInput
      id="landUnderNumberInput"
      _defaultValue={null}
      _disclosedFields={{ array: [] }}
      currency="USD"
      decimalPlaces="2"
      format="currency"
      label="Land Under"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      showSeparators={true}
      value="{{TTLLandedUnder.data.TTLLandedUnder}}"
    />
    <Module
      id="printProjectTape"
      margin="0"
      name="PrintProjectTape"
      overflowType="scroll"
      pageUuid="0c13d982-0bac-11ee-833e-2ff058a27196"
      projectNumber="{{ projectInput.value }}"
      sp_Store_Load_Pricing_Call="sp_Store_Load_Pricing_Call"
    />
    <Spacer id="spacer1" marginType="normal" />
    <Select
      id="freightMethodSelect"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Select Freight Method"
      labelPosition="top"
      labels=""
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{FreightData.data.FreightMethod}}"
      values=""
    >
      <Option
        id="e8b7b"
        disabled={false}
        hidden={false}
        value="Logistics Land Cartage"
      />
      <Option id="b7f09" disabled={false} hidden={false} value="BPU" />
    </Select>
    <Text
      id="text7"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="Freight Amount
"
      verticalAlign="center"
    />
    <NumberInput
      id="freightAmountNumberInput"
      _defaultValue={null}
      _disclosedFields={{ array: [] }}
      currency="USD"
      decimalPlaces="2"
      format="currency"
      hideLabel={true}
      label="Freight Rate"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true
"
      showSeparators={true}
      value="{{FreightData.data.FreightAmount}}"
    />
    <Button
      id="freightToTapeButton"
      _disclosedFields={{ array: [] }}
      disabled="{{ConsistentSoldLoadsSoldDates.data}}"
      horizontalAlign="center"
      marginType="normal"
      text="Send Freight To Tape
"
    >
      <Event
        enabled="{{freightAmountNumberInput.value>0}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="FreightToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{freightAmountNumberInput.value<1||loadNumberSelect.value==""}}'
        }
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { description: '"Freight Amount Or Load # Is Missing"' },
                  { duration: "5" },
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
    <Button
      id="payRecToTapeButton"
      _disclosedFields={{ array: [] }}
      disabled="{{ConsistentSoldLoadsSoldDates.data}}"
      horizontalAlign="center"
      marginType="normal"
      text="Send Pay/Rec To Tape"
    >
      <Event
        enabled={
          '{{differenceNumberInput.value !=0 && paymentTypeSelect.value =="Floor Transfer"}}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="FT310PayableToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{differenceNumberInput.value !=0 && paymentTypeSelect.value =="Floor Transfer"}}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="FT310ReceivableToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{paymentTypeSelect.value=="Check Writer" && differenceNumberInput.value <0}}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CWPayableToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{paymentTypeSelect.value=="Check Writer" && differenceNumberInput.value>0}}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CWReceivableToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{loadNumberSelect.value==""||paymentTypeSelect.value==null}}'
        }
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { description: '"Load # And Payment Type Must Be Selected"' },
                  { duration: "5" },
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
      <Event
        enabled={
          '{{differenceNumberInput.value==0 && paymentTypeSelect.value=="Floor Transfer" }}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="FT310AtInvoiceRecToTape"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button4"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      text="Print Transfer Sheets"
    >
      <Event
        enabled={'{{loadNumberSelect.value==""}}'}
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { description: "You Must Select A Load #" },
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
      <Event
        enabled="{{paymentTypeSelect.value==null}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { description: "You Must Select A Payment Type" },
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
      <Event
        enabled="{{freightMethodSelect.value !== null && paymentTypeSelect.value !== null && loadNumberSelect.value !== null }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sp_Store_Load_Pricing_Call"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{freightMethodSelect.value==null}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { description: "You Must Select A Freight Method" },
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
      <Event
        enabled="{{freightMethodSelect.value !== null && paymentTypeSelect.value !== null && loadNumberSelect.value !== null }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="generateTransferSheets"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button6"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      text="Print Invoice
"
    >
      <Event
        enabled="{{loadNumberSelect.value != null}}"
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal31"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{loadNumberSelect.value==null}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { description: "You Must Select A Load #" },
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
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sp_Store_Load_Pricing_Call"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button5"
      _disclosedFields={{ array: [] }}
      disabled="{{generateSellingDealerAgreement.isFetching}}"
      loading="{{generateSellingDealerAgreement.isFetching}}"
      marginType="normal"
      text="Print Sell Dlr Agreement"
    >
      <Event
        enabled="{{differenceNumberInput.value<=0 && loadNumberSelect.value !== null}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "Seller owes nothing and Selling Agreement not needed.",
                  },
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
      <Event
        enabled={
          '{{differenceNumberInput.value>0 && freightMethodSelect.value !== null && paymentTypeSelect.value !== null && loadNumberSelect.value !== "" }}'
        }
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sp_Store_Load_Pricing_Call"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{differenceNumberInput.value>0 && freightMethodSelect.value !== null && paymentTypeSelect.value !== null && loadNumberSelect.value !== null }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="printSDAButtonHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="getCleanInvoicesButton"
      _disclosedFields={{ array: [] }}
      hidden="true"
      marginType="normal"
      text="Get Clean Invoices
"
    >
      <Event
        enabled={
          '{{GetMake.data.Make.includes("CHE")||GetMake.data.Make.includes("BUI")||GetMake.data.Make.includes("CAD")||GetMake.data.Make.includes("GMC")}}'
        }
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "http://192.168.1.219/api/dealer/pull/cleans/{{projectInput.value}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{GetMake.data.Make.includes("FOR")||GetMake.data.Make.includes("LIN")}}'
        }
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "http://192.168.1.219/api/dealer/pull/fcleans/{{projectInput.value}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{GetMake.data.Make.includes("CHR")||GetMake.data.Make.includes("DOD")||GetMake.data.Make.includes("JEE")||GetMake.data.Make.includes("RAM")}}'
        }
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "http://192.168.1.219/api/dealer/pull/cdjrcleans/{{projectInput.value}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{GetMake.data.Make.includes("KIA")}}'}
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "http://192.168.1.219/api/dealer/pull/importcleans/{{projectInput.value}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert
      id="noSellerPrimaryContactAlert"
      buttonText="Copy DTN"
      description="There is no Sales primary contact currently set for DTN #:  {{getDealersByLoad.data?.SellingDealer}}. A selling dealer agreement can not be created until this is corrected. Please contact the Selling Rep to have this updated."
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "util" },
            { method: "copyToClipboard" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  { value: "{{getDealersByLoad.data?.SellingDealer[0]}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
            { enabled: "" },
          ],
        },
      ]}
      hidden="{{sellingPrimaryContactWarningHidden.value}}"
      title="No Primary Contact Found"
      type="warning"
    />
    <Link
      id="link1"
      hidden="{{sellingPrimaryContactWarningHidden.value}}"
      iconBefore="bold/interface-arrows-synchronize"
      marginType="normal"
      style={{ ordered: [{ text: "rgb(60, 146, 220)" }] }}
      text="Refresh"
      textSize="default"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="getSellerPrimaryContact"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Alert
      id="createDocumentError"
      buttonText="Copy"
      description="{{createCoreDocument.error}}"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "util" },
            { method: "copyToClipboard" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: "{{createDocumentError.description}}" }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{!createCoreDocument.error || createCoreDocument.isFetching}}"
      title="Error Generating Document"
      type="error"
    />
  </View>
</Container>
