<Modal
  id="modal10"
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
    id="text46"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**TRANSFER SHEET (FT NOT 310)**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput41"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput17"
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
  <TextInput
    id="textInput42"
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
    id="currency30"
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
    id="text47"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput43"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER NAME"
    labelWidth="21"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput18"
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
    id="textInput44"
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
    id="textInput45"
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
    id="textInput46"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput19"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="ZIP"
    labelWidth="12"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrZip['0']}}"
  />
  <TextInput
    id="textInput47"
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
    id="textInput48"
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
    id="textInput49"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    labelWidth="32"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrContact['0']}}"
  />
  <TextInput
    id="textInput50"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.SellingDlrOwningRep['0']}}"
  />
  <TableLegacy
    id="table20"
    _columns={[
      "Unit",
      "VINRT",
      "ProjectNumber",
      "LoadNumbers",
      "VINNumber",
      "Year",
      "Description",
      "OUInvoice",
      "GivingOne",
      "GivingTwo",
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
      "DOM",
      "Landed",
      "Invoice",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "ColumnName310",
      "InvoiceColumnName",
      "ColumnName261A",
      "ColumnName65A",
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
        { "HB Seller Is Giving Up": "Amount Over 310" },
        { "261A Seller Is Giving Up": "261A Seller Is Giving" },
        { "65A Seller Is Giving Up": "65A Seller Is Giving" },
        { AmountOverInvoice: "Amount Over Invoice" },
        { OUInvoice: "Over/Under Invoice" },
        { GivingOne: "261A Giving" },
        { GivingTwo: "65A Giving" },
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
      { object: { id: "Unit", value: 67 } },
      { object: { id: "VINRT", value: 99 } },
      { object: { id: "Year", value: 56 } },
      { object: { id: "Description", value: 273.25 } },
      { object: { id: "AmountOverInvoice", value: 127 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text48"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput51"
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
    id="numberInput20"
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
    id="textInput52"
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
    id="textInput53"
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
    id="textInput54"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ST"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrSt['0']}}"
  />
  <NumberInput
    id="numberInput21"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="ZIP"
    labelWidth="12"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    showStepper={true}
    value="{{TransferSheets.data.BuyingDlrZip['0']}}"
  />
  <TextInput
    id="textInput55"
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
    id="textInput56"
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
    id="textInput57"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DEALER CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrContact['0']}}"
  />
  <TextInput
    id="textInput58"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN CONTACT"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{TransferSheets.data.BuyingDlrOwningRep['0']}}"
  />
</Modal>
