<Modal
  id="modal11"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "TransferSheets" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  hidden="TRUE"
  modalWidth="1200"
>
  <Text
    id="text49"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**TRANSFER SHEET (FT AND 310)(PREMIUM)**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput59"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput22"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="Project #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{projectInput.value}}"
  />
  <Text
    id="text50"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**S/D**"
  />
  <TextInput
    id="textInput60"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Freight Method"
    labelWidth="35"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{ freightMethodSelect.value }}"
  />
  <NumberInput
    id="numberInput23"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    label="Freight Rate"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showSeparators={true}
    showStepper={true}
    value="{{freightAmountNumberInput.value}}"
  />
  <Text
    id="text51"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput61"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER NAME"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput24"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="DLR #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput62"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ADDRESS"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrAddress['0']}}"
  />
  <TextInput
    id="textInput63"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="CITY"
    labelWidth="7"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrCity['0']}}"
  />
  <TextInput
    id="textInput64"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput25"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="ZIP"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="0{{TransferSheets.data.SellingDlrZip['0']}}"
  />
  <TextInput
    id="textInput65"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="PHONE"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrPhone['0']}}"
  />
  <TextInput
    id="textInput66"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="FAX"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrFax['0']}}"
  />
  <TextInput
    id="textInput67"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrContact['0']}}"
  />
  <TextInput
    id="textInput68"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    value="{{TransferSheets.data.SellingDlrOwningRep['0']}}"
  />
  <TableLegacy
    id="table21"
    _columns={[
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VINRT",
      "VINNumber",
      "Year",
      "Description",
      "DOM",
      "OUInvoice",
      "GivingOne",
      "AmountOverInvoice",
      "Rep",
      "LandedUnder",
      "FreightUsed",
      "SellingDlrNumber",
      "SellingDlrName",
      "SellingDlrAddress",
      "SellingDlrCity",
      "SellingDlrSt",
      "SellingDlrZip",
      "SellingDlrPhone",
      "SellingDlrFax",
      "SellingDlrContact",
      "SellingDlrOwningRep",
      "BuyingDlrNumber",
      "BuyingDlrName",
      "BuyingDlrAddress",
      "BuyingDlrCity",
      "BuyingDlrSt",
      "BuyingDlrZip",
      "BuyingDlrPhone",
      "BuyingDlrFax",
      "BuyingDlrContact",
      "BuyingDlrOwningRep",
      "HB Seller Is Giving Up",
      "261A Seller Is Giving Up",
      "65A Seller Is Giving Up",
      "FeeUnit",
      "FreightPad",
      "Make",
      "SoldDate",
      "SalePrice",
      "CheckPrice",
      "Difference",
      "INVOICEDATE",
      "FindingRep",
      "SellingRep",
      "SellingEmail",
      "SellingEmail2",
      "BuyingEmail",
      "BuyingEmail2",
      "SellingBAC",
      "BuyingBAC",
      "FreightCo",
      "FreightAmt",
      "HBNegative",
      "ID",
      "FreightCoContact",
      "FreightCoPhone",
      "Landed",
      "SumLanded",
      "Invoice",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "SumDifferenceNeg",
      "ColumnName310",
      "InvoiceColumnName",
      "ColumnName261A",
      "ColumnName65A",
      "GivingTwo",
      "ColumnNameLand",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { Unit: "sum" },
        { Year: "sum" },
        { "HB Seller Is Giving Up": "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
        { AmountOverInvoice: "" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { Unit: "" },
        { Year: "" },
        { "HB Seller Is Giving Up": "" },
        { "261A Seller Is Giving Up": "" },
        { "65A Seller Is Giving Up": "" },
        { AmountOverInvoice: "" },
      ],
    }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { CheckPrice: false },
        { ColumnName65A: false },
        { SalePrice: false },
        { SoldDate: false },
        { ProjectNumber: false },
        { SellingDlrFax: false },
        { SellingDlrNumber: false },
        { LoadNumbers: false },
        { VINNumber: false },
        { SellingDlrCity: false },
        { SellingDlrName: false },
        { FreightAmt: false },
        { BuyingDlrAddress: false },
        { SellingDlrContact: false },
        { SellingEmail2: false },
        { SellingDlrZip: false },
        { SellingDlrOwningRep: false },
        { SumDifference: false },
        { SumDifferenceNeg: false },
        { BuyingBAC: false },
        { "310Amount": false },
        { FeeUnit: false },
        { Landed: false },
        { DiffNeg: false },
        { ColumnNameLand: false },
        { "261A Seller Is Giving Up": false },
        { SumCheckPrice: false },
        { SellingEmail: false },
        { Invoice: false },
        { SellingRep: false },
        { LandedUnder: false },
        { InvoiceColumnName: false },
        { Make: false },
        { BuyingDlrFax: false },
        { BuyingDlrSt: false },
        { FreightCo: false },
        { HBNegative: false },
        { FreightPad: false },
        { FreightCoContact: false },
        { ColumnName310: false },
        { BuyingDlrContact: false },
        { BuyingEmail2: false },
        { NegativeDifference: false },
        { "HB Seller Is Giving Up": false },
        { BuyingDlrOwningRep: false },
        { BuyingDlrZip: false },
        { FindingRep: false },
        { SellingDlrPhone: false },
        { SellingBAC: false },
        { SumLanded: false },
        { ColumnName261A: false },
        { BuyingDlrNumber: false },
        { SumSalePrice: false },
        { BuyingDlrCity: false },
        { BuyingDlrName: false },
        { "65A Seller Is Giving Up": false },
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
        { Difference: false },
        { LandedOver: false },
        { SumLandedPos: false },
        { FreightCoPhone: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { AmountOverInvoice: "center" },
        { DOM: "center" },
        { Unit: "center" },
        { OUInvoice: "center" },
        { "261A Seller Is Giving Up": "center" },
        { "HB Seller Is Giving Up": "center" },
        { GivingOne: "center" },
        { "65A Seller Is Giving Up": "center" },
        { Year: "center" },
        { VINRT: "center" },
        { GivingTwo: "center" },
      ],
    }}
    columnColors={{
      ordered: [
        { BuyingEmail: "" },
        { FreightUsed: "" },
        { BuyingDlrPhone: "" },
        { AmountOverInvoice: "" },
        { CheckPrice: "" },
        { ColumnName65A: "" },
        { DOM: "" },
        { SalePrice: "" },
        { SoldDate: "" },
        { ProjectNumber: "" },
        { SellingDlrFax: "" },
        { SellingDlrNumber: "" },
        { Unit: "" },
        { LoadNumbers: "" },
        { VINNumber: "" },
        { SellingDlrCity: "" },
        { SellingDlrName: "" },
        { FreightAmt: "" },
        { BuyingDlrAddress: "" },
        { SellingDlrContact: "" },
        { SellingEmail2: "" },
        { SellingDlrZip: "" },
        { SellingDlrOwningRep: "" },
        { OUInvoice: "" },
        { SumDifference: "" },
        { SumDifferenceNeg: "" },
        { BuyingBAC: "" },
        { "310Amount": "" },
        { FeeUnit: "" },
        { Landed: "" },
        { DiffNeg: "" },
        { ColumnNameLand: "" },
        { "261A Seller Is Giving Up": "" },
        { SumCheckPrice: "" },
        { SellingEmail: "" },
        { Invoice: "" },
        { SellingRep: "" },
        { LandedUnder: "" },
        { InvoiceColumnName: "" },
        { Make: "" },
        { BuyingDlrFax: "" },
        { BuyingDlrSt: "" },
        { FreightCo: "" },
        { HBNegative: "" },
        { FreightPad: "" },
        { FreightCoContact: "" },
        { ColumnName310: "" },
        { BuyingDlrContact: "" },
        { BuyingEmail2: "" },
        { NegativeDifference: "" },
        { "HB Seller Is Giving Up": "" },
        { BuyingDlrOwningRep: "" },
        { BuyingDlrZip: "" },
        { FindingRep: "" },
        { SellingDlrPhone: "" },
        { SellingBAC: "" },
        { SumLanded: "" },
        { ColumnName261A: "" },
        { BuyingDlrNumber: "" },
        { SumSalePrice: "" },
        { GivingOne: "" },
        { BuyingDlrCity: "" },
        { BuyingDlrName: "" },
        { "65A Seller Is Giving Up": "" },
        { SellingDlrAddress: "" },
        { INVOICEDATE: "" },
        { ID: "" },
        { SellingDlrSt: "" },
        { Description: "" },
        { Year: "" },
        { Rep: "" },
        { Difference: "" },
        { VINRT: "" },
        { GivingTwo: "" },
        { LandedOver: "" },
        { SumLandedPos: "" },
        { FreightCoPhone: "" },
      ],
    }}
    columnFormats={{
      ordered: [
        { Unit: "NumberDataCell" },
        { Year: "NumberDataCell" },
        { "HB Seller Is Giving Up": "CurrencyDataCell" },
        { "261A Seller Is Giving Up": "CurrencyDataCell" },
        { "65A Seller Is Giving Up": "CurrencyDataCell" },
        { AmountOverInvoice: "default" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { VINRT: "VIN #" },
        { "HB Seller Is Giving Up": "HB Seller Is Giving" },
        { "261A Seller Is Giving Up": "261A Seller Is Giving" },
        { "65A Seller Is Giving Up": "65A Seller Is Giving" },
        { AmountOverInvoice: "Amount Over Invoice" },
        { OUInvoice: "Amt Over Invoice" },
        { GivingOne: "261A Seller Giving" },
        { GivingTwo: "65A Seller Giving" },
      ],
    }}
    columnTypeProperties={{
      ordered: [
        {
          Unit: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
        {
          Year: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
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
          AmountOverInvoice: {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
      ],
    }}
    columnWidths={[
      { object: { id: "Unit", value: 69 } },
      { object: { id: "VINRT", value: 97 } },
      { object: { id: "Year", value: 70 } },
      { object: { id: "Description", value: 313.75 } },
      { object: { id: "OUInvoice", value: 123 } },
      { object: { id: "GivingOne", value: 135 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text52"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "rgba(14, 13, 13, 1)" }] }}
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput69"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER NAME"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput26"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="DLR #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.BuyingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput70"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ADDRESS"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrAddress['0']}}"
  />
  <TextInput
    id="textInput71"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="CITY"
    labelWidth="7"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrCity['0']}}"
  />
  <TextInput
    id="textInput72"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput27"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="ZIP"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.BuyingDlrZip['0']}}"
  />
  <TextInput
    id="textInput73"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="PHONE"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrPhone['0']}}"
  />
  <TextInput
    id="textInput74"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="FAX"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrFax['0']}}"
  />
  <TextInput
    id="textInput75"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrContact['0']}}"
  />
  <TextInput
    id="textInput76"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrOwningRep['0']}}"
  />
  <Text
    id="text53"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**PLEASE TRANSFER THE ABOVE UNITS INTO THE BUYING DEALER'S INVENTORY @ LINE 310 AND FORWARD MSO(S) IMMEDIATELY. YOU WILL RECEIVE FUNDS IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency31"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showSeparators={true}
    showStepper={true}
    value="{{differenceNumberInput.value*-1}}"
  />
  <Text
    id="text60"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**FROM THE DEALER TRADE NETWORK TO COVER THE SHORTAGE. ALL FUNDS WILL BE ISSUED PRIOR TO PICK UP.**"
    verticalAlign="center"
  />
  <Text
    id="text55"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ color: "success" }] }}
    value="**---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------**"
    verticalAlign="center"
  />
  <Text
    id="text56"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**B/D**"
    verticalAlign="center"
  />
  <TableLegacy
    id="table22"
    _columns={[
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VINRT",
      "VINNumber",
      "Year",
      "Description",
      "Rep",
      "LandedUnder",
      "LandedOver",
      "FreightUsed",
      "SellingDlrNumber",
      "SellingDlrName",
      "SellingDlrAddress",
      "SellingDlrCity",
      "SellingDlrSt",
      "SellingDlrZip",
      "SellingDlrPhone",
      "SellingDlrFax",
      "SellingDlrContact",
      "SellingDlrOwningRep",
      "BuyingDlrNumber",
      "BuyingDlrName",
      "BuyingDlrAddress",
      "BuyingDlrCity",
      "BuyingDlrSt",
      "BuyingDlrZip",
      "BuyingDlrPhone",
      "BuyingDlrFax",
      "BuyingDlrContact",
      "BuyingDlrOwningRep",
      "HB Seller Is Giving Up",
      "261A Seller Is Giving Up",
      "65A Seller Is Giving Up",
      "FeeUnit",
      "310Amount",
      "FreightPad",
      "Make",
      "SoldDate",
      "SalePrice",
      "CheckPrice",
      "Difference",
      "INVOICEDATE",
      "FindingRep",
      "SellingRep",
      "SellingEmail",
      "SellingEmail2",
      "BuyingEmail",
      "BuyingEmail2",
      "SellingBAC",
      "BuyingBAC",
      "FreightCo",
      "FreightAmt",
      "HBNegative",
      "ID",
    ]}
    _columnSummaryTypes={{ ordered: [{ Unit: "sum" }, { Year: "sum" }] }}
    _columnSummaryValues={{ ordered: [{ Unit: "" }, { Year: "" }] }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { CheckPrice: false },
        { ColumnName65A: false },
        { DOM: false },
        { SalePrice: false },
        { SoldDate: false },
        { ProjectNumber: false },
        { SellingDlrFax: false },
        { SellingDlrNumber: false },
        { LoadNumbers: false },
        { loadnumbers: false },
        { VINNumber: false },
        { SellingDlrCity: false },
        { SellingDlrName: false },
        { FreightAmt: false },
        { BuyingDlrAddress: false },
        { SellingDlrContact: false },
        { SellingEmail2: false },
        { SellingDlrZip: false },
        { SellingDlrOwningRep: false },
        { OUInvoice: false },
        { SumDifference: false },
        { SumDifferenceNeg: false },
        { BuyingBAC: false },
        { "310Amount": false },
        { FeeUnit: false },
        { Landed: false },
        { DiffNeg: false },
        { ColumnNameLand: false },
        { "261A Seller Is Giving Up": false },
        { SumCheckPrice: false },
        { SellingEmail: false },
        { Invoice: false },
        { SellingRep: false },
        { LandedUnder: false },
        { InvoiceColumnName: false },
        { Make: false },
        { BuyingDlrFax: false },
        { BuyingDlrSt: false },
        { FreightCo: false },
        { HBNegative: false },
        { FreightPad: false },
        { FreightCoContact: false },
        { ColumnName310: false },
        { BuyingDlrContact: false },
        { BuyingEmail2: false },
        { "HB Seller Is Giving Up": false },
        { BuyingDlrOwningRep: false },
        { BuyingDlrZip: false },
        { FindingRep: false },
        { SellingDlrPhone: false },
        { SellingBAC: false },
        { SumLanded: false },
        { ColumnName261A: false },
        { BuyingDlrNumber: false },
        { SumSalePrice: false },
        { GivingOne: false },
        { BuyingDlrCity: false },
        { BuyingDlrName: false },
        { "65A Seller Is Giving Up": false },
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
        { Difference: false },
        { GivingTwo: false },
        { LandedOver: false },
        { FreightCoPhone: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [{ Unit: "center" }, { VINRT: "center" }, { Year: "center" }],
    }}
    columnColors={{
      ordered: [
        { BuyingEmail: "" },
        { FreightUsed: "" },
        { BuyingDlrPhone: "" },
        { AmountOverInvoice: "" },
        { CheckPrice: "" },
        { ColumnName65A: "" },
        { DOM: "" },
        { SalePrice: "" },
        { SoldDate: "" },
        { ProjectNumber: "" },
        { SellingDlrFax: "" },
        { SellingDlrNumber: "" },
        { Unit: "" },
        { LoadNumbers: "" },
        { VINNumber: "" },
        { SellingDlrCity: "" },
        { SellingDlrName: "" },
        { FreightAmt: "" },
        { BuyingDlrAddress: "" },
        { SellingDlrContact: "" },
        { SellingEmail2: "" },
        { SellingDlrZip: "" },
        { SellingDlrOwningRep: "" },
        { OUInvoice: "" },
        { SumDifference: "" },
        { SumDifferenceNeg: "" },
        { BuyingBAC: "" },
        { "310Amount": "" },
        { FeeUnit: "" },
        { Landed: "" },
        { DiffNeg: "" },
        { ColumnNameLand: "" },
        { "261A Seller Is Giving Up": "" },
        { SumCheckPrice: "" },
        { SellingEmail: "" },
        { Invoice: "" },
        { SellingRep: "" },
        { LandedUnder: "" },
        { InvoiceColumnName: "" },
        { Make: "" },
        { BuyingDlrFax: "" },
        { BuyingDlrSt: "" },
        { FreightCo: "" },
        { HBNegative: "" },
        { FreightPad: "" },
        { FreightCoContact: "" },
        { ColumnName310: "" },
        { BuyingDlrContact: "" },
        { BuyingEmail2: "" },
        { NegativeDifference: "" },
        { "HB Seller Is Giving Up": "" },
        { BuyingDlrOwningRep: "" },
        { BuyingDlrZip: "" },
        { FindingRep: "" },
        { SellingDlrPhone: "" },
        { SellingBAC: "" },
        { SumLanded: "" },
        { ColumnName261A: "" },
        { BuyingDlrNumber: "" },
        { SumSalePrice: "" },
        { GivingOne: "" },
        { BuyingDlrCity: "" },
        { BuyingDlrName: "" },
        { "65A Seller Is Giving Up": "" },
        { SellingDlrAddress: "" },
        { INVOICEDATE: "" },
        { ID: "" },
        { SellingDlrSt: "" },
        { Description: "" },
        { Year: "" },
        { Rep: "" },
        { Difference: "" },
        { VINRT: "" },
        { GivingTwo: "" },
        { LandedOver: "" },
        { SumLandedPos: "" },
        { FreightCoPhone: "" },
      ],
    }}
    columnFormats={{
      ordered: [{ Unit: "NumberDataCell" }, { Year: "NumberDataCell" }],
    }}
    columnHeaderNames={{ ordered: [{ VINRT: "VIN #" }] }}
    columnTypeProperties={{
      ordered: [
        {
          Unit: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
        {
          Year: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
      ],
    }}
    columnWidths={[
      { object: { id: "Unit", value: 125 } },
      { object: { id: "VINRT", value: 140 } },
      { object: { id: "Year", value: 143 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text57"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**THE ABOVE UNIT(S) WILL BE TRANSFERRED INTO YOUR INVENTORY @ LINE 310 AND MSO'(S) WILL BE FORWARDED. PLEASE REMIT A CHECK**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency32"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showSeparators={true}
    showStepper={true}
    value="{{landUnderNumberInput.value*-1}}"
  />
  <Text
    id="text58"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <Text
    id="text59"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE DEALER TRADE NETWORK**"
    verticalAlign="center"
  />
</Modal>
