<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <UrlFragments id="$urlFragments" value={{ ordered: [{ "": "" }] }} />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Button
      id="button52"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      text="Move Loads"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "b1181072-132f-11ed-b783-3b62c4250c6c" },
            { options: { ordered: [{ newTab: true }] } },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./src/container2.rsx" />
    <TextInput
      id="projectInput"
      _defaultValue=""
      _disclosedFields={{ array: ["text"] }}
      label="Enter Project #"
      marginType="normal"
      placeholder="Enter value"
      showClear={true}
      style={{ ordered: [{ text: "primary" }, { sharedLabel: "primary" }] }}
    >
      <Event
        event="focus"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ClearTransferInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Button id="button79" marginType="normal" text="Find Project">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CloseProjectList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SelectLoad"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ProjectsTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="PayablesReceivables"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isProjectDeleted"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container5"
      footerPaddingType="normal"
      headerPaddingType="normal"
      heightType="fixed"
      margin="0"
      marginType="none"
      overflowType="hidden"
      paddingType="none"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(242, 241, 239, 0)" }] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="e1bdb" viewKey="View 1">
        <Alert
          id="projectDeletedAlert"
          description="{{projectInput.value}} was deleted"
          hidden="{{ isProjectDeleted.data ? !isProjectDeleted.data.isRemoved[0] : true }}"
          title=""
        />
      </View>
    </Container>
    <Text
      id="text1"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(38, 38, 38)" }] }}
      value="## **Sold Loads Details**"
      verticalAlign="center"
    />
    <Container
      id="container4"
      footerPaddingType="normal"
      headerPaddingType="normal"
      margin="0"
      marginType="none"
      paddingType="none"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(242, 241, 239, 0)" }] }}
    >
      <Header>
        <Text
          id="containerTitle3"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="e1bdb" viewKey="View 1">
        <Modal
          id="modal27"
          _disclosedFields={{ array: [] }}
          buttonText="Bulk Edit Load #"
          closeOnOutsideClick={true}
          modalHeightType="auto"
          modalWidth="30%"
        >
          <TextInput
            id="loadNumber"
            _disclosedFields={{ array: ["background"] }}
            label="Load #"
            marginType="normal"
            placeholder="Enter value"
            style={{
              ordered: [
                {
                  background:
                    "{{ soldLoadDetailsTable.selectedRow.data['0']['load #']  != loadNumber.value ? '#03AC13' :  '#FFFFFF' }}",
                },
              ],
            }}
            value="{{ soldLoadDetailsTable.selectedRow.data['0']['load #'] }}"
          />
          <Button
            id="button69"
            _disclosedFields={{ array: [] }}
            marginType="normal"
            text="Apply"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updateLoadNumber"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Modal>
        <Include src="./src/updateRowModal.rsx" />
        <Button
          id="button72"
          _disclosedFields={{ array: ["background"] }}
          marginType="normal"
          style={{ ordered: [{ background: "danger" }] }}
          text="Delete Unit(s) From Project"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="deleteFromSoldloads"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <TableLegacy
      id="soldLoadDetailsTable"
      _columns={[
        "projectnumber",
        "load #",
        "unit",
        "year",
        "make",
        "description",
        "BuiltLike",
        "VINNumber",
        "310Amount",
        "HB Seller Is Giving Up",
        "261A Seller Is Giving Up",
        "65A Seller Is Giving Up",
        "FeeUnit",
        "BuyingDlrNumber",
        "BuyingDlrName",
        "sellingrep",
        "SellingDlrNumber",
        "SellingDlrName",
        "findingrep",
        "freight amt",
        "solddate",
        "BPU",
        "exclude",
        "Drop Ship",
        "ID",
      ]}
      _columnVisibility={{
        ordered: [
          { solddate: true },
          { projectnumber: true },
          { SellingDlrNumber: true },
          { loadnumbers: true },
          { SellingDlrName: true },
          { unitnumbers: true },
          { BPU: true },
          { "310Amount": true },
          { FeeUnit: true },
          { "freight amt": true },
          { "261A Seller Is Giving Up": true },
          { "Drop Ship": false },
          { sellingrep: true },
          { LandedUnder: true },
          { make: true },
          { "HB Seller Is Giving Up": true },
          { findingrep: true },
          { builtlike: true },
          { BuiltLike: true },
          { BuyingDlrNumber: true },
          { ID2: false },
          { BuyingDlrName: true },
          { "65A Seller Is Giving Up": true },
          { exclude: false },
          { ID: false },
          { Vin: true },
          { description: true },
          { year: true },
          { Rep: true },
        ],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: [] }}
      allowMultiRowSelect={true}
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [
          { solddate: "left" },
          { projectnumber: "left" },
          { SellingDlrNumber: "center" },
          { unit: "center" },
          { unitnumbers: "center" },
          { BPU: "left" },
          { "load #": "center" },
          { "310Amount": "left" },
          { FeeUnit: "center" },
          { "freight amt": "left" },
          { "261A Seller Is Giving Up": "left" },
          { "Drop Ship": "left" },
          { sellingrep: "left" },
          { LandedUnder: "left" },
          { "HB Seller Is Giving Up": "left" },
          { findingrep: "left" },
          { builtlike: "left" },
          { "Custom Column 1": "left" },
          { BuyingDlrNumber: "center" },
          { "65A Seller Is Giving Up": "left" },
          { exclude: "left" },
          { year: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { solddate: "" },
          { projectnumber: "" },
          { SellingDlrNumber: "" },
          { unit: "" },
          { loadnumbers: "" },
          { VINNumber: "" },
          { SellingDlrName: "" },
          { unitnumbers: "" },
          { BPU: "" },
          { "load #": "" },
          { "310Amount": "" },
          { FeeUnit: "" },
          { "freight amt": "" },
          { "261A Seller Is Giving Up": "" },
          { "Drop Ship": "" },
          { sellingrep: "" },
          { LandedUnder: "" },
          { make: "" },
          { "HB Seller Is Giving Up": "" },
          { findingrep: "" },
          { builtlike: "" },
          { BuiltLike: "" },
          { BuyingDlrNumber: "" },
          { ID2: "" },
          { BuyingDlrName: "" },
          { "65A Seller Is Giving Up": "" },
          { exclude: "" },
          { ID: "" },
          { Vin: "" },
          { description: "" },
          { year: "" },
          { Rep: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { solddate: true },
          { projectnumber: true },
          { SellingDlrNumber: true },
          { unit: true },
          { loadnumbers: false },
          { VINNumber: true },
          { SellingDlrName: true },
          { unitnumbers: false },
          { BPU: true },
          { "load #": true },
          { "310Amount": true },
          { FeeUnit: true },
          { "freight amt": false },
          { "261A Seller Is Giving Up": true },
          { "Drop Ship": true },
          { sellingrep: true },
          { LandedUnder: false },
          { make: true },
          { "HB Seller Is Giving Up": true },
          { findingrep: true },
          { BuiltLike: true },
          { BuyingDlrNumber: true },
          { BuyingDlrName: true },
          { "65A Seller Is Giving Up": true },
          { exclude: true },
          { ID: false },
          { Vin: true },
          { description: true },
          { year: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { solddate: "DateDataCell" },
          { projectnumber: "NumberDataCell" },
          { BPU: "CheckboxDataCell" },
          { "310Amount": "CurrencyDataCell" },
          { "freight amt": "CurrencyDataCell" },
          { "261A Seller Is Giving Up": "CurrencyDataCell" },
          { "Drop Ship": "CheckboxDataCell" },
          { LandedUnder: "CurrencyDataCell" },
          { "HB Seller Is Giving Up": "CurrencyDataCell" },
          { "65A Seller Is Giving Up": "CurrencyDataCell" },
          { exclude: "CheckboxDataCell" },
          { "Custom Column 1": "button" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { solddate: "Sold Date" },
          { projectnumber: "Project #" },
          { SellingDlrNumber: "SellDlr #" },
          { unit: "Unit #" },
          { loadnumbers: "Load #" },
          { VINNumber: "Vin #" },
          { SellingDlrName: "Selling Dlr Name" },
          { unitnumbers: "Unit #\n" },
          { "load #": "Load #" },
          { "freight amt": "Freight Amt" },
          { "261A Seller Is Giving Up": "261A Giving Up" },
          { sellingrep: "SellingRep" },
          { LandedUnder: "LandUnder" },
          { make: "Make" },
          { "HB Seller Is Giving Up": "HB Giving Up" },
          { findingrep: "FindingRep" },
          { builtlike: "BuiltLike" },
          { BuyingDlrNumber: "BuyDlr #" },
          { BuyingDlrName: "Buying Dlr Name" },
          { "65A Seller Is Giving Up": "65A Giving Up" },
          { exclude: "Exclude" },
          { Vin: "Vin #" },
          { description: "Description" },
          { year: "Year" },
        ],
      }}
      columnRestrictedEditing={{
        ordered: [
          { BPU: "true" },
          { "Drop Ship": "true" },
          { exclude: "true" },
        ],
      }}
      columns={[
        "projectnumber",
        "loadnumbers",
        "unitnumbers",
        "year",
        "make",
        "description",
        "builtlike",
        "BuiltLike",
        "Vin",
        "310Amount",
        "HB Seller Is Giving Up",
        "261A Seller Is Giving Up",
        "65A Seller Is Giving Up",
        "FeeUnit",
        "LandedUnder",
        "BuyingDlrNumber",
        "BuyingDlrName",
        "sellingrep",
        "SellingDlrNumber",
        "SellingDlrName",
        "findingrep",
        "freight amt",
        "BPU",
        "Drop Ship",
        "exclude",
        "solddate",
        "ID",
      ]}
      columnTypeProperties={{
        ordered: [
          {
            "HB Seller Is Giving Up": {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
                { decimalPlaces: "2" },
              ],
            },
          },
          {
            "261A Seller Is Giving Up": {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            "65A Seller Is Giving Up": {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            "310Amount": {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            LandedUnder: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          { solddate: { ordered: [{ dateFormat: "" }] } },
          {
            "freight amt": {
              ordered: [
                { editable: false },
                { value: null },
                { showSeparators: true },
                { padDecimal: true },
                { decimalPlaces: "2" },
                { currency: "USD" },
              ],
            },
          },
          {
            projectnumber: {
              ordered: [
                { editable: false },
                { value: null },
                { showSeparators: false },
                { padDecimal: true },
                { decimalPlaces: "0" },
              ],
            },
          },
          { BPU: { ordered: [{ falseDisplayValue: "empty" }] } },
          { "Drop Ship": { ordered: [{ falseDisplayValue: "empty" }] } },
          { exclude: { ordered: [{ falseDisplayValue: "empty" }] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          { BPU: { ordered: [{ disabled: true }] } },
          { "Drop Ship": { ordered: [{ disabled: true }] } },
          { exclude: { ordered: [{ disabled: true }] } },
          { "Custom Column 1": { ordered: [{ buttonType: "action" }] } },
        ],
      }}
      columnVisibility={{
        ordered: [
          { solddate: true },
          { projectnumber: true },
          { SellingDlrNumber: true },
          { loadnumbers: true },
          { SellingDlrName: true },
          { unitnumbers: true },
          { BPU: true },
          { "310Amount": true },
          { FeeUnit: true },
          { "freight amt": true },
          { "261A Seller Is Giving Up": true },
          { "Drop Ship": true },
          { sellingrep: true },
          { LandedUnder: true },
          { make: true },
          { "HB Seller Is Giving Up": true },
          { findingrep: true },
          { builtlike: true },
          { BuiltLike: true },
          { BuyingDlrNumber: true },
          { BuyingDlrName: true },
          { "65A Seller Is Giving Up": true },
          { exclude: true },
          { ID: false },
          { Vin: true },
          { description: true },
          { year: true },
          { Rep: true },
        ],
      }}
      columnWidths={[
        { object: { id: "year", value: 67 } },
        { object: { id: "Rep", value: 93 } },
        { object: { id: "310Amount", value: 101 } },
        { object: { id: "SellingDlrNumber", value: 80 } },
        { object: { id: "BuyingDlrNumber", value: 76 } },
        { object: { id: "BPU", value: 74 } },
        { object: { id: "unitnumbers", value: 61 } },
        { object: { id: "HB Seller Is Giving Up", value: 102 } },
        { object: { id: "261A Seller Is Giving Up", value: 114 } },
        { object: { id: "65A Seller Is Giving Up", value: 108 } },
        { object: { id: "FeeUnit", value: 71 } },
        { object: { id: "projectnumber", value: 82 } },
        { object: { id: "loadnumbers", value: 101 } },
        { object: { id: "BuiltLike", value: 140 } },
        { object: { id: "Vin", value: 94 } },
        { object: { id: "LandedUnder", value: 91 } },
        { object: { id: "BuyingDlrName", value: 196 } },
        { object: { id: "SellingDlrName", value: 194 } },
        { object: { id: "solddate", value: 108 } },
        { object: { id: "findingrep", value: 95 } },
        { object: { id: "Drop Ship", value: 98 } },
        { object: { id: "exclude", value: 87 } },
        { object: { id: "load #", value: 120 } },
        { object: { id: "description", value: 204.99432373046875 } },
      ]}
      customButtonName=""
      data="{{CloseProjectList.data}}"
      defaultSelectedRow="none"
      defaultSortByColumn="loadnumbers"
      events={[]}
      pageSize={9}
      saveChangesDisabled="true"
    />
    <Text
      id="text9"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="## **Project Table Details**
"
      verticalAlign="center"
    />
    <Text
      id="text11"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(13, 186, 93)" }] }}
      value="### ↓Select Row To Edit↓"
      verticalAlign="center"
    />
    <TableLegacy
      id="projectTableDetailsTable"
      _columns={[
        "ProjectNumber",
        "LoadNumbers",
        "UnitNumbers",
        "BuyingDealer",
        "Dealer Name",
        "Rep",
        "LandedUnder",
        "FreightUsed",
        "FreightPad",
        "Fee",
        "Agreement Type",
        "ID",
      ]}
      _columnVisibility={{
        ordered: [
          { FreightUsed: true },
          { ProjectNumber: true },
          { LoadNumbers: true },
          { UnitNumbers: true },
          { Fee: true },
          { LandedUnder: true },
          { FreightPad: true },
          { "Agreement Type": true },
          { "Dealer Name": true },
          { BuyingDealer: true },
          { ID: false },
          { Rep: true },
        ],
      }}
      _disclosedFields={{ array: [] }}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { UnitNumbers: "center" },
          { LandedUnder: "left" },
          { FreightUsed: "left" },
          { FreightPad: "left" },
          { Fee: "left" },
          { BuyingDealer: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { FreightUsed: "" },
          { ProjectNumber: "" },
          { LoadNumbers: "" },
          { UnitNumbers: "" },
          { Fee: "" },
          { LandedUnder: "" },
          { FreightPad: "" },
          { "Agreement Type": "" },
          { "Dealer Name": "" },
          { BuyingDealer: "" },
          { ID: "" },
          { Rep: "" },
        ],
      }}
      columnEditable={{ ordered: [{ FreightUsed: false }] }}
      columnFormats={{
        ordered: [
          { LandedUnder: "CurrencyDataCell" },
          { FreightUsed: "CurrencyDataCell" },
          { FreightPad: "CurrencyDataCell" },
          { Fee: "CurrencyDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { ProjectNumber: "Project #" },
          { BuyingDealer: "BuyDlr #" },
          { LoadNumbers: "Load #" },
          { UnitNumbers: "Unit #\n" },
          { LandedUnder: "Landed Under" },
          { FreightUsed: "Freight Used" },
          { FreightPad: "Freight Pad" },
          { "Dealer Name": "Buying Dealer Name" },
        ],
      }}
      columns={[
        "ProjectNumber",
        "LoadNumbers",
        "UnitNumbers",
        "BuyingDealer",
        "Dealer Name",
        "Rep",
        "LandedUnder",
        "FreightUsed",
        "FreightPad",
        "Fee",
        "Agreement Type",
        "ID",
      ]}
      columnTypeProperties={{
        ordered: [
          {
            LandedUnder: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            FreightUsed: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            FreightPad: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            Fee: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { FreightUsed: true },
          { ProjectNumber: true },
          { LoadNumbers: true },
          { UnitNumbers: true },
          { Fee: true },
          { LandedUnder: true },
          { FreightPad: true },
          { "Agreement Type": true },
          { "Dealer Name": true },
          { BuyingDealer: true },
          { ID: false },
          { Rep: true },
        ],
      }}
      columnWidths={[
        { object: { id: "ProjectNumber", value: 88.453125 } },
        { object: { id: "Agreement Type", value: 117.265625 } },
        { object: { id: "Fee", value: 96.515625 } },
        { object: { id: "FreightUsed", value: 134.5 } },
        { object: { id: "LandedUnder", value: 133.09375 } },
        { object: { id: "Dealer Name", value: 312.671875 } },
        { object: { id: "FreightPad", value: 115.65625 } },
        { object: { id: "LoadNumbers", value: 108.671875 } },
        { object: { id: "UnitNumbers", value: 75.671875 } },
        { object: { id: "BuyingDealer", value: 91.15625 } },
        { object: { id: "Rep", value: 130.34375 } },
      ]}
      customButtonName=""
      data="{{ProjectsTable.data}}"
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "open" },
            { pluginId: "modal2" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize="10"
    />
    <Text
      id="text8"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="## **Payables/Receivables Details**"
      verticalAlign="center"
    />
    <Text
      id="text12"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(13, 186, 93)" }] }}
      value="### ↓Select Row To Edit↓"
      verticalAlign="center"
    />
    <TableLegacy
      id="payablesReceivablesDetailsTable"
      _columns={[
        "ProjectNumber",
        "DTNNumber",
        "Dealer Name",
        "SoldDate",
        "Account",
        "AmountDue",
        "AmtPaid",
        "Profitability",
        "Paiddate",
        "Invoicenumber",
        "ID",
      ]}
      _columnVisibility={{
        ordered: [
          { SoldDate: true },
          { ProjectNumber: true },
          { Profitability: true },
          { DTNNumber: true },
          { Account: true },
          { "Dealer Name": true },
          { AmtPaid: true },
          { Invoicenumber: true },
          { Paiddate: true },
          { ID: false },
          { AmountDue: true },
        ],
      }}
      _disclosedFields={{ array: [] }}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { ProjectNumber: "left" },
          { SoldDate: "left" },
          { AmountDue: "left" },
          { AmtPaid: "left" },
          { Paiddate: "left" },
          { Profitability: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { SoldDate: "" },
          { ProjectNumber: "" },
          { Profitability: "" },
          { DTNNumber: "" },
          { Account: "" },
          { "Dealer Name": "" },
          { AmtPaid: "" },
          { Invoicenumber: "" },
          { Paiddate: "" },
          { ID: "" },
          { AmountDue: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{
        ordered: [
          { SoldDate: "DateDataCell" },
          { AmountDue: "CurrencyDataCell" },
          { AmtPaid: "CurrencyDataCell" },
          { Paiddate: "DateDataCell" },
          { Profitability: "CurrencyDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { ProjectNumber: "Project #" },
          { DTNNumber: "DTN #" },
          { SoldDate: "Sold Date" },
          { AmountDue: "Amount Due" },
          { AmtPaid: "Amt Paid" },
          { Paiddate: "Paid Date" },
          { Invoicenumber: "Invoice #" },
        ],
      }}
      columns={[
        "ProjectNumber",
        "DTNNumber",
        "Dealer Name",
        "SoldDate",
        "Account",
        "AmountDue",
        "AmtPaid",
        "Profitability",
        "Paiddate",
        "Invoicenumber",
        "ID",
      ]}
      columnTypeProperties={{
        ordered: [
          { SoldDate: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          {
            AmountDue: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          {
            AmtPaid: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          { Paiddate: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          {
            Profitability: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { SoldDate: true },
          { ProjectNumber: true },
          { Profitability: true },
          { DTNNumber: true },
          { Account: true },
          { "Dealer Name": true },
          { AmtPaid: true },
          { Invoicenumber: true },
          { Paiddate: true },
          { ID: false },
          { AmountDue: true },
        ],
      }}
      columnWidths={[
        { object: { id: "ProjectNumber", value: 87.5625 } },
        { object: { id: "DTNNumber", value: 104.3125 } },
        { object: { id: "SoldDate", value: 119.453125 } },
        { object: { id: "Account", value: 114.046875 } },
        { object: { id: "AmountDue", value: 131.296875 } },
        { object: { id: "Profitability", value: 139.296875 } },
        { object: { id: "AmtPaid", value: 111.296875 } },
        { object: { id: "Paiddate", value: 122.28125 } },
        { object: { id: "Dealer Name", value: 420.453125 } },
      ]}
      customButtonName=""
      data="{{ PayablesReceivables.data }}"
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "open" },
            { pluginId: "modal3" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize="10"
    />
    <Text
      id="text3"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="## **Deal Paperwork**
"
      verticalAlign="center"
    />
    <Include src="./src/container1.rsx" />
    <Module
      id="dealerOnBoardReportButton1"
      margin="0"
      name="Dealer on Board Report Button"
      overflowType="scroll"
      pageUuid="671f721c-98d1-11ed-bf1a-93be3915f554"
      projectNumber="{{projectInput.value}}"
    />
    <Module
      id="deleteProjectButton1"
      heightType="fixed"
      margin="0"
      name="DeleteProjectButton"
      overflowType="scroll"
      pageUuid="e85df90a-57f0-11ee-93dc-0319a0e8a878"
      projectNumber="{{projectInput.value}}"
    />
    <Modal
      id="modal1"
      _disclosedFields={{ array: [] }}
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      events={[]}
      hidden="true"
      modalHeight="300
"
      modalWidth="1400"
    >
      <TableLegacy
        id="table27"
        _columns={[
          "ProjectNumber",
          "Load #",
          "Unit",
          "Year",
          "Make",
          "Description",
          "BuiltLike",
          "VINNumber",
          "310Amount",
          "HB Seller Is Giving Up",
          "261A Seller Is Giving Up",
          "65A Seller Is Giving Up",
          "FeeUnit",
          "BuyingDlrNumber",
          "SellingRep",
          "ID",
          "SellingDlrNumber",
          "FindingRep",
          "Freight Amt",
          "SoldDate",
          "BPU",
          "Exclude",
          "Drop Ship",
          "Docpath",
          "Docpath2",
          "CarrierNumber",
          "FPUPDIN",
          "FPUPDOUT",
          "AGREEDPUDATE",
          "AGREEDDVDATE",
          "ACTUALPUDATE",
          "ACTUALDVDATE",
          "INVOICENUMBER",
          "INVOICEDATE",
          "MILEAGE",
          "Docpath3",
          "Docpath4",
          "RTSDate",
          "PreferAmount",
          "AllowAmount",
          "TS",
          "Freight Notes",
          "DOM",
        ]}
        _columnSummaryTypes={{
          ordered: [
            { SoldDate: "" },
            { projectnumber: "sum" },
            { ProjectNumber: "sum" },
            { BPU: "checkedCount" },
            { "310Amount": "sum" },
            { FeeUnit: "sum" },
            { "Freight Amt": "sum" },
            { "261A Seller Is Giving Up": "sum" },
            { "Drop Ship": "checkedCount" },
            { "HB Seller Is Giving Up": "sum" },
            { "65A Seller Is Giving Up": "sum" },
            { Exclude: "checkedCount" },
            { Year: "sum" },
          ],
        }}
        _columnSummaryValues={{
          ordered: [
            { SoldDate: "" },
            { projectnumber: "" },
            { ProjectNumber: "" },
            { BPU: "" },
            { "310Amount": "" },
            { FeeUnit: "" },
            { "Freight Amt": "" },
            { "261A Seller Is Giving Up": "" },
            { "Drop Ship": "" },
            { "HB Seller Is Giving Up": "" },
            { "65A Seller Is Giving Up": "" },
            { Exclude: "" },
            { Year: "" },
          ],
        }}
        _columnVisibility={{
          ordered: [
            { CarrierNumber: false },
            { AllowAmount: false },
            { ACTUALPUDATE: false },
            { DOM: false },
            { FPUPDIN: false },
            { "Freight Notes": false },
            { PreferAmount: false },
            { MILEAGE: false },
            { AGREEDPUDATE: false },
            { "Drop Ship": false },
            { ACTUALDVDATE: false },
            { FPUPDOUT: false },
            { Docpath2: false },
            { INVOICENUMBER: false },
            { Docpath3: false },
            { Docpath4: false },
            { AGREEDDVDATE: false },
            { Exclude: false },
            { INVOICEDATE: false },
            { ID: false },
            { Docpath: false },
            { RTSDate: false },
            { TS: false },
          ],
        }}
        _compatibilityMode={false}
        _disclosedFields={{ array: [] }}
        columnAlignment={{
          ordered: [
            { SoldDate: "center" },
            { projectnumber: "center" },
            { ProjectNumber: "center" },
            { SellingDlrNumber: "center" },
            { Unit: "center" },
            { BPU: "center" },
            { "Load #": "center" },
            { "310Amount": "center" },
            { FeeUnit: "center" },
            { "Freight Amt": "center" },
            { "261A Seller Is Giving Up": "center" },
            { "Drop Ship": "center" },
            { SellingRep: "center" },
            { Make: "center" },
            { "HB Seller Is Giving Up": "center" },
            { FindingRep: "center" },
            { BuiltLike: "center" },
            { BuyingDlrNumber: "center" },
            { "65A Seller Is Giving Up": "center" },
            { Exclude: "center" },
            { Description: "center" },
            { Year: "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { CarrierNumber: "" },
            { AllowAmount: "" },
            { ACTUALPUDATE: "" },
            { DOM: "" },
            { SoldDate: "" },
            { ProjectNumber: "" },
            { SellingDlrNumber: "" },
            { FPUPDIN: "" },
            { Unit: "" },
            { VINNumber: "" },
            { "Freight Notes": "" },
            { BPU: "" },
            { PreferAmount: "" },
            { "Load #": "" },
            { "310Amount": "" },
            { MILEAGE: "" },
            { FeeUnit: "" },
            { AGREEDPUDATE: "" },
            { "Freight Amt": "" },
            { "261A Seller Is Giving Up": "" },
            { "Drop Ship": "" },
            { SellingRep: "" },
            { Make: "" },
            { ACTUALDVDATE: "" },
            { FPUPDOUT: "" },
            { "HB Seller Is Giving Up": "" },
            { FindingRep: "" },
            { Docpath2: "" },
            { BuiltLike: "" },
            { INVOICENUMBER: "" },
            { Docpath3: "" },
            { BuyingDlrNumber: "" },
            { Docpath4: "" },
            { AGREEDDVDATE: "" },
            { "65A Seller Is Giving Up": "" },
            { Exclude: "" },
            { INVOICEDATE: "" },
            { ID: "" },
            { Description: "" },
            { Year: "" },
            { Docpath: "" },
            { RTSDate: "" },
            { TS: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { CarrierNumber: true },
            { AllowAmount: true },
            { ACTUALPUDATE: true },
            { DOM: true },
            { SoldDate: true },
            { ProjectNumber: false },
            { SellingDlrNumber: true },
            { FPUPDIN: true },
            { Unit: true },
            { VINNumber: true },
            { "Freight Notes": true },
            { BPU: true },
            { PreferAmount: true },
            { "Load #": true },
            { "310Amount": true },
            { MILEAGE: true },
            { FeeUnit: true },
            { AGREEDPUDATE: true },
            { "Freight Amt": false },
            { "261A Seller Is Giving Up": true },
            { "Drop Ship": true },
            { SellingRep: true },
            { Make: true },
            { ACTUALDVDATE: true },
            { FPUPDOUT: true },
            { "HB Seller Is Giving Up": true },
            { FindingRep: true },
            { Docpath2: true },
            { BuiltLike: true },
            { INVOICENUMBER: true },
            { Docpath3: true },
            { BuyingDlrNumber: true },
            { Docpath4: true },
            { AGREEDDVDATE: true },
            { "65A Seller Is Giving Up": true },
            { Exclude: true },
            { INVOICEDATE: true },
            { ID: false },
            { Description: true },
            { Year: true },
            { Docpath: true },
            { RTSDate: true },
            { TS: true },
          ],
        }}
        columnFormats={{
          ordered: [
            { SoldDate: "DateDataCell" },
            { projectnumber: "NumberDataCell" },
            { ProjectNumber: "NumberDataCell" },
            { BPU: "CheckboxDataCell" },
            { "310Amount": "CurrencyDataCell" },
            { FeeUnit: "CurrencyDataCell" },
            { "Freight Amt": "CurrencyDataCell" },
            { "261A Seller Is Giving Up": "CurrencyDataCell" },
            { "Drop Ship": "CheckboxDataCell" },
            { "HB Seller Is Giving Up": "CurrencyDataCell" },
            { "65A Seller Is Giving Up": "CurrencyDataCell" },
            { Exclude: "CheckboxDataCell" },
            { Year: "NumberDataCell" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { projectnumber: "Project #" },
            { ProjectNumber: "Project #" },
            { BuyingDlrNumber: "BuyDlr#" },
            { SellingDlrNumber: "SellDlr#" },
          ],
        }}
        columnMappers={{ ordered: [{ BPU: "" }] }}
        columnTypeProperties={{
          ordered: [
            { SoldDate: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
            {
              projectnumber: {
                ordered: [{ showSeparators: false }, { padDecimal: true }],
              },
            },
            {
              ProjectNumber: {
                ordered: [{ showSeparators: false }, { padDecimal: true }],
              },
            },
            { BPU: { ordered: [{ falseDisplayValue: "empty" }] } },
            {
              "310Amount": {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              FeeUnit: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              "Freight Amt": {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              "261A Seller Is Giving Up": {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            { "Drop Ship": { ordered: [{ falseDisplayValue: "empty" }] } },
            {
              "HB Seller Is Giving Up": {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              "65A Seller Is Giving Up": {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            { Exclude: { ordered: [{ falseDisplayValue: "empty" }] } },
            {
              Year: {
                ordered: [{ showSeparators: false }, { padDecimal: true }],
              },
            },
          ],
        }}
        columnWidths={[
          { object: { id: "BPU", value: 79 } },
          { object: { id: "Exclude", value: 102 } },
        ]}
        customButtonName=""
        data="{{ModifyLoadSoldloads.data}}"
        doubleClickToEdit={true}
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "VINValidityCheck" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
          {
            ordered: [
              { method: "trigger" },
              { enabled: "{{VINValidityCheck.data.valid === true}}" },
              { params: { ordered: [] } },
              { targetId: null },
              { pluginId: "UpdateSoldLoads" },
              { waitType: "debounce" },
              { event: "saveChanges" },
              { type: "datasource" },
              { waitMs: "0" },
            ],
          },
        ]}
        saveChangesDisabled="{{!VINValidityCheck.data.valid}}"
        showBoxShadow={false}
      />
    </Modal>
    <Modal
      id="modal2"
      _disclosedFields={{ array: [] }}
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      events={[]}
      hidden="true"
      modalHeight="500px"
      modalWidth="1400"
    >
      <TableLegacy
        id="table28"
        _columns={[
          "ID",
          "ProjectNumber",
          "LoadNumbers",
          "UnitNumbers",
          "DTNNumber",
          "Rep",
          "LandedUnder",
          "FreightUsed",
          "TimeStamp",
          "IsSingle",
          "Quantity",
          "Mileage",
          "FreightPad",
          "Fee",
          "Agreement Type",
        ]}
        _columnSummaryTypes={{
          ordered: [
            { ProjectNumber: "sum" },
            { LandedUnder: "sum" },
            { FreightUsed: "sum" },
            { FreightPad: "sum" },
            { Fee: "sum" },
          ],
        }}
        _columnSummaryValues={{
          ordered: [
            { ProjectNumber: "" },
            { LandedUnder: "" },
            { FreightUsed: "" },
            { FreightPad: "" },
            { Fee: "" },
          ],
        }}
        _columnVisibility={{
          ordered: [
            { ID: false },
            { TimeStamp: false },
            { IsSingle: false },
            { Quantity: false },
            { Mileage: false },
          ],
        }}
        _compatibilityMode={false}
        _disclosedFields={{ array: [] }}
        columnAlignment={{
          ordered: [
            { ProjectNumber: "center" },
            { LoadNumbers: "center" },
            { UnitNumbers: "center" },
            { DTNNumber: "center" },
            { LandedUnder: "center" },
            { FreightUsed: "center" },
            { FreightPad: "center" },
            { Fee: "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { FreightUsed: "" },
            { ProjectNumber: "" },
            { LoadNumbers: "" },
            { UnitNumbers: "" },
            { Fee: "" },
            { DTNNumber: "" },
            { Mileage: "" },
            { Quantity: "" },
            { LandedUnder: "" },
            { FreightPad: "" },
            { "Agreement Type": "" },
            { IsSingle: "" },
            { TimeStamp: "" },
            { ID: "" },
            { Rep: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { FreightUsed: false },
            { ProjectNumber: false },
            { LoadNumbers: true },
            { UnitNumbers: true },
            { Fee: true },
            { DTNNumber: true },
            { Mileage: true },
            { Quantity: true },
            { LandedUnder: true },
            { FreightPad: false },
            { "Agreement Type": true },
            { IsSingle: true },
            { TimeStamp: true },
            { ID: false },
            { Rep: true },
          ],
        }}
        columnFormats={{
          ordered: [
            { ProjectNumber: "NumberDataCell" },
            { LandedUnder: "CurrencyDataCell" },
            { FreightUsed: "CurrencyDataCell" },
            { FreightPad: "CurrencyDataCell" },
            { Fee: "CurrencyDataCell" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { ProjectNumber: "Project #" },
            { UnitNumbers: "Unit" },
            { LoadNumbers: "Load #" },
            { DTNNumber: "BuyDlr #" },
          ],
        }}
        columnTypeProperties={{
          ordered: [
            {
              ProjectNumber: {
                ordered: [{ showSeparators: false }, { padDecimal: true }],
              },
            },
            {
              LandedUnder: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              FreightUsed: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              FreightPad: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
            {
              Fee: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                ],
              },
            },
          ],
        }}
        columnWidths={[{ object: { id: "UnitNumbers", value: 90.75 } }]}
        customButtonName=""
        data="{{ModifyProjectOnProjects.data}}"
        doubleClickToEdit={true}
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "UpdateTblProjects" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        showBoxShadow={false}
      />
    </Modal>
    <Modal
      id="modal3"
      _disclosedFields={{ array: [] }}
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      hidden="true"
      modalWidth="1400"
    >
      <Button
        id="button9"
        _disclosedFields={{ array: [] }}
        marginType="normal"
        text="Delete This Record"
      >
        <Event
          enabled="{{ table12.selectedRow.data.AmtPaid>0 }}"
          event="click"
          method="showNotification"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { notificationType: "error" },
                    {
                      description:
                        '"A Receipt Or Payment Has Been Made on This Record. Deletion Is Not Allowed"',
                    },
                    { duration: "7" },
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
          enabled="{{ table12.selectedRow.data.AmtPaid==0 }}"
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="DeletePayableReceivable"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <TableLegacy
        id="table12"
        _columns={[
          "loadnumbers",
          "unitnumbers",
          "year",
          "make",
          "description",
          "Vin",
          "HB Seller Is Giving Up",
          "261A Seller Is Giving Up",
          "65A Seller Is Giving Up",
          "FeeUnit",
          "310Amount",
          "LandedUnder",
          "Rep",
          "SellingDlrName",
          "SellingDlrNumber",
          "BuyingDlrName",
          "BuyingDlrNumber",
          "BPU",
          "Drop Ship",
          "solddate",
          "ProjectNumber",
          "DTNNumber",
          "Dealer Name",
          "SoldDate",
          "Account",
          "AmountDue",
          "AmtPaid",
          "Paiddate",
          "Profitability",
          "Invoicenumber",
          "ID",
        ]}
        _columnVisibility={{
          ordered: [
            { solddate: true },
            { SoldDate: true },
            { ProjectNumber: true },
            { SellingDlrNumber: true },
            { loadnumbers: true },
            { SellingDlrName: true },
            { unitnumbers: true },
            { Profitability: true },
            { BPU: true },
            { DTNNumber: true },
            { "310Amount": true },
            { FeeUnit: true },
            { "261A Seller Is Giving Up": true },
            { "Drop Ship": true },
            { Account: true },
            { LandedUnder: true },
            { make: true },
            { "Dealer Name": true },
            { "HB Seller Is Giving Up": true },
            { AmtPaid: true },
            { Invoicenumber: true },
            { BuyingDlrNumber: true },
            { BuyingDlrName: true },
            { "65A Seller Is Giving Up": true },
            { Paiddate: true },
            { ID: false },
            { Vin: true },
            { AmountDue: true },
            { description: true },
            { year: true },
            { Rep: true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnAlignment={{
          ordered: [
            { SoldDate: "left" },
            { ProjectNumber: "left" },
            { Profitability: "left" },
            { DTNNumber: "left" },
            { "Dealer Name": "left" },
            { AmtPaid: "left" },
            { Invoicenumber: "left" },
            { Paiddate: "left" },
            { AmountDue: "left" },
          ],
        }}
        columnColors={{
          ordered: [
            { solddate: "" },
            { SoldDate: "" },
            { ProjectNumber: "" },
            { SellingDlrNumber: "" },
            { loadnumbers: "" },
            { SellingDlrName: "" },
            { unitnumbers: "" },
            { Profitability: "" },
            { BPU: "" },
            { DTNNumber: "" },
            { "310Amount": "" },
            { FeeUnit: "" },
            { "261A Seller Is Giving Up": "" },
            { "Drop Ship": "" },
            { Account: "" },
            { LandedUnder: "" },
            { make: "" },
            { "Dealer Name": "" },
            { "HB Seller Is Giving Up": "" },
            { AmtPaid: "" },
            { Invoicenumber: "" },
            { BuyingDlrNumber: "" },
            { BuyingDlrName: "" },
            { "65A Seller Is Giving Up": "" },
            { Paiddate: "" },
            { ID: "" },
            { Vin: "" },
            { AmountDue: "" },
            { description: "" },
            { year: "" },
            { Rep: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { ProjectNumber: true },
            { DTNNumber: true },
            { "Dealer Name": true },
            { SoldDate: true },
            { Account: true },
            { AmountDue: false },
            { AmtPaid: false },
            { Invoicenumber: true },
          ],
        }}
        columnFormats={{
          ordered: [
            { SoldDate: "DateDataCell" },
            { AmountDue: "CurrencyDataCell" },
            { AmtPaid: "CurrencyDataCell" },
            { Paiddate: "DateDataCell" },
            { Profitability: "CurrencyDataCell" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { ProjectNumber: "Project#" },
            { DTNNumber: "DTN #" },
            { SoldDate: "Sold Date" },
            { Paiddate: "Paid Date" },
            { AmountDue: "Amount Due" },
            { AmtPaid: "Amount Paid" },
            { Invoicenumber: "Invoice#" },
          ],
        }}
        columns={[
          "loadnumbers",
          "unitnumbers",
          "year",
          "make",
          "description",
          "Vin",
          "HB Seller Is Giving Up",
          "261A Seller Is Giving Up",
          "65A Seller Is Giving Up",
          "FeeUnit",
          "310Amount",
          "LandedUnder",
          "Rep",
          "SellingDlrName",
          "SellingDlrNumber",
          "BuyingDlrName",
          "BuyingDlrNumber",
          "BPU",
          "Drop Ship",
          "solddate",
          "ProjectNumber",
          "DTNNumber",
          "Dealer Name",
          "SoldDate",
          "Account",
          "AmountDue",
          "AmtPaid",
          "Paiddate",
          "Profitability",
          "Invoicenumber",
          "ID",
        ]}
        columnTypeProperties={{
          ordered: [
            { SoldDate: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
            {
              AmountDue: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                  { decimalPlaces: "2" },
                ],
              },
            },
            {
              AmtPaid: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                  { decimalPlaces: "2" },
                ],
              },
            },
            { Paiddate: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
            {
              Profitability: {
                ordered: [
                  { showSeparators: true },
                  { currency: "USD" },
                  { padDecimal: true },
                  { decimalPlaces: "2" },
                ],
              },
            },
          ],
        }}
        columnVisibility={{
          ordered: [
            { solddate: true },
            { SoldDate: true },
            { ProjectNumber: true },
            { SellingDlrNumber: true },
            { loadnumbers: true },
            { SellingDlrName: true },
            { unitnumbers: true },
            { Profitability: true },
            { BPU: true },
            { DTNNumber: true },
            { "310Amount": true },
            { FeeUnit: true },
            { "261A Seller Is Giving Up": true },
            { "Drop Ship": true },
            { Account: true },
            { LandedUnder: true },
            { make: true },
            { "Dealer Name": true },
            { "HB Seller Is Giving Up": true },
            { AmtPaid: true },
            { Invoicenumber: true },
            { BuyingDlrNumber: true },
            { BuyingDlrName: true },
            { "65A Seller Is Giving Up": true },
            { Paiddate: true },
            { ID: false },
            { Vin: true },
            { AmountDue: true },
            { description: true },
            { year: true },
            { Rep: true },
          ],
        }}
        columnWidths={[
          { object: { id: "Dealer Name", value: 192.09375 } },
          { object: { id: "SoldDate", value: 123 } },
          { object: { id: "AmtPaid", value: 113 } },
          { object: { id: "Profitability", value: 114 } },
          { object: { id: "ProjectNumber", value: 78.65625 } },
          { object: { id: "DTNNumber", value: 85.453125 } },
          { object: { id: "Account", value: 95.453125 } },
          { object: { id: "AmountDue", value: 118.78125 } },
          { object: { id: "Invoicenumber", value: 136.78125 } },
          { object: { id: "Paiddate", value: 159.78125 } },
        ]}
        customButtonName=""
        data="{{ModifyPayableReceivables.data}}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "UpdateTblProjectPayables" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize="10"
      />
    </Modal>
    <Include src="./src/modal8.rsx" />
    <Modal
      id="soldLoadsDatesErrorModal"
      buttonText="Open Modal"
      events={[]}
      hidden="true
"
      modalHeightType="auto"
      modalWidth="60%"
      style={{
        ordered: [
          { "primary-surface": "hsl(4, 57%, 52%)" },
          { "primary-text": "" },
        ],
      }}
    >
      <Text
        id="text105"
        marginType="normal"
        style={{ ordered: [{ color: "canvas" }] }}
        value="**Not all of the units on the sold loads table have matching sold dates. This needs to be corrected before tape can be run for this project.**"
        verticalAlign="center"
      />
    </Modal>
    <Include src="./src/transferSheetModal.rsx" />
    <Include src="./src/modal5.rsx" />
    <Include src="./src/modal6.rsx" />
    <Include src="./src/modal12.rsx" />
    <Include src="./src/modal7.rsx" />
    <Include src="./src/modal9.rsx" />
    <Include src="./src/modal10.rsx" />
    <Include src="./src/modal11.rsx" />
    <Include src="./src/transferSheetDisplayModal.rsx" />
    <Include src="./src/modal28.rsx" />
    <Modal
      id="sdaModal"
      _disclosedFields={{ array: [] }}
      buttonText="Open Modal"
      events={[]}
      hidden="true"
      margin="0"
      marginType="none"
      modalHeight="1200"
      modalHeightType="auto"
      modalOverflowType="visible"
      modalWidth="1200"
    >
      <Module
        id="sdaDocDetail"
        documentId="{{generateSellingDealerAgreement.data.savedDocument.id}}"
        enableSendToEsign="true"
        margin="0"
        name="DocumentDetailModule"
        overflowType="scroll"
        pageUuid="19f893c8-cb9e-11ee-be4e-cbb39d86146a"
      />
    </Modal>
    <Include src="./src/modal20.rsx" />
    <Include src="./src/modal14.rsx" />
    <Include src="./src/modal15.rsx" />
    <Include src="./src/modal24.rsx" />
    <Include src="./src/modal18.rsx" />
    <Include src="./src/modal19.rsx" />
    <Modal
      id="modal30"
      buttonText="Open Modal"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "SelectDealerForInvoicing" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      modalHeight="200"
      modalWidth="500"
    >
      <Select
        id="select6"
        data="{{ SelectDealerForInvoicing.data }}"
        emptyMessage="No options"
        label="Select DTN # For Invoice"
        labelPosition="top"
        marginType="normal"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{ item.DTNNumber }}"
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="Invoice"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <Button id="button80" marginType="normal" text="Go">
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
    <Include src="./src/modal21.rsx" />
    <Modal
      id="modal31"
      buttonText="Open Modal"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "SelectDealerForInvoicing" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      modalHeight="200"
      modalWidth="500"
    >
      <Select
        id="select7"
        data="{{ SelectDealerForInvoicing.data }}"
        emptyMessage="No options"
        label="Select DTN # For Invoice"
        labelPosition="top"
        marginType="normal"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{ item.DTNNumber }}"
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="Invoice2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <Button id="button81" marginType="normal" text="Go">
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal14"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
    <Include src="./src/modal22.rsx" />
    <Include src="./src/modal23.rsx" />
    <Include src="./src/modal25.rsx" />
    <Include src="./src/sellingDealerFTDisplayModal.rsx" />
    <Include src="./src/modal29.rsx" />
    <Include src="./src/pickupLotModal.rsx" />
  </Frame>
</App>
