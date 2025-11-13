<Modal
  id="modal24"
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
    id="text85"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**TRANSFER SHEET (FT AND 310)**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput102"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput36"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="Project #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{TransferSheets.data.ProjectNumber}}"
  />
  <Text
    id="text86"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**S/D**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput103"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Freight Method"
    labelWidth="35"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{freightMethodSelect.value}}"
  />
  <NumberInput
    id="currency41"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="Freight Rate"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showSeparators={true}
    showStepper={true}
    value="{{freightAmountNumberInput.value}}"
  />
  <Text
    id="text87"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput104"
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
    id="numberInput37"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="DLR #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput105"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ADDRESS
"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrAddress['0']}}"
  />
  <TextInput
    id="textInput106"
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
    id="textInput107"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput38"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="ZIP"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="0{{TransferSheets.data.SellingDlrZip['0']}}"
  />
  <TextInput
    id="textInput108"
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
    id="textInput109"
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
    id="textInput110"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrContact['0']}}"
  />
  <TextInput
    id="textInput111"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrOwningRep['0']}}"
  />
  <TableLegacy
    id="table29"
    _columns={[
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VINRT",
      "VINNumber",
      "Year",
      "Description",
      "DOM",
      "HB Seller Is Giving Up",
      "261A Seller Is Giving Up",
      "65A Seller Is Giving Up",
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
      "AmountOverInvoice",
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
      "DiffNeg",
      "SumDifferenceNeg",
      "ColumnName310",
      "InvoiceColumnName",
      "ColumnName261A",
      "ColumnName65A",
      "OUInvoice",
      "GivingOne",
      "GivingTwo",
      "ColumnNameLand",
      "NegativeDifference",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { Unit: "sum" },
        { Year: "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
        { AmountOverInvoice: "sum" },
        { "HB Seller Is Giving Up": "sum" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { Unit: "" },
        { Year: "" },
        { "261A Seller Is Giving Up": "" },
        { "65A Seller Is Giving Up": "" },
        { AmountOverInvoice: "" },
        { "HB Seller Is Giving Up": "" },
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
        { OUInvoice: false },
        { SumDifference: false },
        { SumDifferenceNeg: false },
        { BuyingBAC: false },
        { "310Amount": false },
        { FeeUnit: false },
        { Landed: false },
        { DiffNeg: false },
        { ColumnNameLand: false },
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
        { "HB Seller Is Giving Up": true },
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
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
        { Difference: false },
        { GivingTwo: false },
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
        { VINNumber: "center" },
        { "261A Seller Is Giving Up": "center" },
        { "HB Seller Is Giving Up": "center" },
        { "65A Seller Is Giving Up": "center" },
        { Year: "center" },
        { VINRT: "center" },
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
        { "261A Seller Is Giving Up": "CurrencyDataCell" },
        { "65A Seller Is Giving Up": "CurrencyDataCell" },
        { AmountOverInvoice: "CurrencyDataCell" },
        { "HB Seller Is Giving Up": "CurrencyDataCell" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { VINRT: "VIN#" },
        { "HB Seller Is Giving Up": "HB Seller Is Giving" },
        { "261A Seller Is Giving Up": "261A Seller Is Giving" },
        { "65A Seller Is Giving Up": "65A Seller Is Giving" },
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
        {
          "HB Seller Is Giving Up": {
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
      { object: { id: "Unit", value: 62 } },
      { object: { id: "Year", value: 73 } },
      { object: { id: "VINRT", value: 118.203125 } },
      { object: { id: "Description", value: 273.453125 } },
      { object: { id: "DOM", value: 105.09375 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text88"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput112"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER NAME"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput39"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="DLR #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{TransferSheets.data.BuyingDlrNumber['0']}}"
  />
  <TextInput
    id="textInput113"
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
    id="textInput114"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="CITY"
    labelWidth="7"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrCity['0']}}"
  />
  <TextInput
    id="textInput115"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput40"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="ZIP"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="0{{TransferSheets.data.BuyingDlrZip['0']}}"
  />
  <TextInput
    id="textInput116"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="PHONE"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrPhone['0']}}"
  />
  <TextInput
    id="textInput117"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="FAX"
    labelWidth="15"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrFax['0']}}"
  />
  <TextInput
    id="textInput118"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrContact['0']}}"
  />
  <TextInput
    id="textInput119"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrOwningRep['0']}}"
  />
  <NumberInput
    id="currency42"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    inputValue={0}
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value="{{differenceNumberInput.value}}"
  />
  <Text
    id="text89"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**PLEASE TRANSFER THE ABOVE UNITS INTO THE BUYING DEALER'S INVENTORY @ LINE 310. PLEASE REMIT THE DIFFERENCE OF $**"
    verticalAlign="center"
  />
  <Text
    id="text90"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE DEALER TRADE NETWORK...**"
    verticalAlign="center"
  />
  <Text
    id="text91"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ color: "success" }] }}
    value="**---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------**"
    verticalAlign="center"
  />
  <Text
    id="text92"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**B/D PREMIUM**"
    verticalAlign="center"
  />
  <TableLegacy
    id="table30"
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
      "AmountOverInvoice",
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
        { SumLandedPos: false },
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
    columnHeaderNames={{ ordered: [{ VINRT: "VIN#" }] }}
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
      { object: { id: "Unit", value: 79.75 } },
      { object: { id: "VINRT", value: 150.078125 } },
      { object: { id: "Year", value: 75.59375 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text93"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**THE ABOVE UNITS WILL BE TRANSFERRED INTO YOUR INVENTORY @ LINE 310 AND MSO(S) WILL BE FORWARDED. PLEASE REMIT THE DIFFERENCE OF**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency43"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    inputValue={0}
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showSeparators={true}
    showStepper={true}
    value="{{landUnderNumberInput.value*-1}}"
  />
  <Text
    id="text94"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE DEALER TRADE NETWORK**"
    verticalAlign="center"
  />
</Modal>
