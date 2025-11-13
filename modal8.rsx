<Modal
  id="modal8"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "transferSheetsOpen" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  hidden="TRUE"
  modalHeight="800"
  modalWidth="1200"
>
  <Text
    id="text28"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**Transfer Sheet (CW Not 310**)"
    verticalAlign="center"
  />
  <TextInput
    id="textInput19"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput9"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="Project #"
    labelWidth="40"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{projectInput.value}}"
  />
  <TextInput
    id="textInput20"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Freight Method"
    labelWidth="35"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{freightMethodSelect.value}}"
  />
  <NumberInput
    id="currency23"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    label="Freight Rate
"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showSeparators={true}
    showStepper={true}
    value="{{freightAmountNumberInput.value}}"
  />
  <Text
    id="text29"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput21"
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
    id="numberInput10"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="DLR #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput22"
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
    id="textInput23"
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
    id="textInput24"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput11"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="ZIP"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrZip['0']}}"
  />
  <TextInput
    id="textInput25"
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
    id="textInput26"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="FAX"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrFax['0']}}"
  />
  <TextInput
    id="textInput27"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrContact['0']}}"
  />
  <TextInput
    id="textInput28"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrOwningRep['0']}}"
  />
  <TableLegacy
    id="table17"
    _columns={[
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VINRT",
      "VINNumber",
      "Year",
      "Description",
      "DOM",
      "Invoice",
      "OUInvoice",
      "HB Seller Is Giving Up",
      "AmountOverInvoice",
      "261A Seller Is Giving Up",
      "65A Seller Is Giving Up",
      "CheckPrice",
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
      "FeeUnit",
      "FreightPad",
      "Make",
      "SoldDate",
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
      "ColumnName310",
      "InvoiceColumnName",
      "ColumnName261A",
      "ColumnName65A",
      "GivingOne",
      "GivingTwo",
      "SalePrice",
      "Difference",
      "Landed",
      "SumLanded",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "DiffNeg",
      "SumDifferenceNeg",
      "ColumnNameLand",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { Unit: "sum" },
        { Year: "sum" },
        { "310Amount": "sum" },
        { "HB Seller Is Giving Up": "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
        { SalePrice: "" },
        { AmountOverInvoice: "sum" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { Unit: "" },
        { Year: "" },
        { "310Amount": "" },
        { "HB Seller Is Giving Up": "" },
        { "261A Seller Is Giving Up": "" },
        { "65A Seller Is Giving Up": "" },
        { SalePrice: "" },
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
        { SalePrice: true },
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
        { FeeUnit: false },
        { Landed: false },
        { DiffNeg: false },
        { ColumnNameLand: false },
        { "261A Seller Is Giving Up": false },
        { SumCheckPrice: false },
        { SellingEmail: false },
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
        { SalePrice: "center" },
        { Unit: "center" },
        { OUInvoice: "center" },
        { "310Amount": "center" },
        { "261A Seller Is Giving Up": "center" },
        { Invoice: "center" },
        { "HB Seller Is Giving Up": "center" },
        { GivingOne: "center" },
        { "65A Seller Is Giving Up": "center" },
        { Year: "center" },
        { Difference: "center" },
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
        { "310Amount": "CurrencyDataCell" },
        { "HB Seller Is Giving Up": "CurrencyDataCell" },
        { "261A Seller Is Giving Up": "CurrencyDataCell" },
        { "65A Seller Is Giving Up": "CurrencyDataCell" },
        { SalePrice: "default" },
        { AmountOverInvoice: "CurrencyDataCell" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { DOM: "Age" },
        { SalePrice: "Check Amount" },
        { OUInvoice: "Amt Over" },
        { "261A Seller Is Giving Up": "261A Seller Giving" },
        { Invoice: "310 Amount" },
        { "HB Seller Is Giving Up": "HB Seller Giving" },
        { GivingOne: "261A Seller Giving" },
        { "65A Seller Is Giving Up": "65A Seller Giving" },
        { VINRT: "VIN #" },
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
          "310Amount": {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
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
          SalePrice: {
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
      { object: { id: "Unit", value: 52 } },
      { object: { id: "HB Seller Is Giving Up", value: 116.515625 } },
      { object: { id: "Year", value: 61 } },
      { object: { id: "VINRT", value: 92 } },
      { object: { id: "261A Seller Is Giving Up", value: 130.765625 } },
      { object: { id: "65A Seller Is Giving Up", value: 123.015625 } },
      { object: { id: "SalePrice", value: 117.171875 } },
      { object: { id: "GivingTwo", value: 128.765625 } },
      { object: { id: "GivingOne", value: 131.75 } },
      { object: { id: "Description", value: 235.171875 } },
      { object: { id: "DOM", value: 57 } },
      { object: { id: "OUInvoice", value: 94.5625 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <NumberInput
    id="currency24"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    label="TOTAL AMOUNT DUE TO SELLER"
    labelWidth="55"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showSeparators={true}
    showStepper={true}
    value="{{ttlSellPriceNumberInput.value}}"
  />
  <Text
    id="text30"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput29"
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
    id="numberInput12"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="DLR #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.BuyingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput30"
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
    id="textInput31"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="CITY"
    labelWidth="8"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrCity['0']}}"
  />
  <TextInput
    id="textInput32"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput13"
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
    id="textInput33"
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
    id="textInput34"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="FAX"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrFax['0']}}"
  />
  <TextInput
    id="textInput35"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    labelWidth="32"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrContact['0']}}"
  />
  <TextInput
    id="textInput36"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    value="{{TransferSheets.data.BuyingDlrOwningRep['0']}}"
  />
</Modal>
