<Modal
  id="modal6"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "SellingDlrAgreement" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  hidden="true"
  modalHeight="700"
  modalWidth="1400"
>
  <Text
    id="text13"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**SELLING DEALER AGREEMENT - CW**"
    verticalAlign="center"
  />
  <NumberInput
    id="numberInput6"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="DTN #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{SellingDlrAgreement.data.SellingDlrNumber['0']}}"
  />
  <NumberInput
    id="numberInput5"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="Project #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{SellingDlrAgreement.data.ProjectNumber['0']}}"
  />
  <TextInput
    id="textInput11"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{SellingDlrAgreement.data.LoadNumbers['0']}}"
  />
  <TextInput
    id="textInput12"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Dealer Name"
    labelWidth="18"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{SellingDlrAgreement.data.SellingDlrName['0']}}"
  />
  <TextInput
    id="textInput13"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="City"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{SellingDlrAgreement.data.SellingDlrCity['0']}}"
  />
  <TextInput
    id="textInput14"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="St"
    marginType="normal"
    placeholder="Enter value"
    value="{{SellingDlrAgreement.data.SellingDlrSt['0']}}"
  />
  <TableLegacy
    id="table15"
    _columns={[
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VinRt",
      "VINNumber",
      "Year",
      "Description",
      "DOM",
      "Invoice",
      "OUInvoice",
      "AmountOverInvoice",
      "GivingOne",
      "GivingTwo",
      "HB Seller Is Giving Up",
      "SalePrice",
      "CheckPrice",
      "Difference",
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
      "SumCheckPrice",
      "SumSalePrice",
      "SumDifference",
      "310ColumnName",
      "261AColumnName",
      "65AColumnName",
      "InvoiceColumnName",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { CheckPrice: "" },
        { SalePrice: "" },
        { Unit: "sum" },
        { "310Amount": "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "HB Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
        { Year: "sum" },
        { Difference: "" },
        { Invoice: "" },
        { AmountOverInvoice: "" },
        { GivingOne: "" },
        { GivingTwo: "" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { CheckPrice: "" },
        { SalePrice: "" },
        { Unit: "" },
        { "310Amount": "" },
        { "261A Seller Is Giving Up": "" },
        { "HB Seller Is Giving Up": "" },
        { "65A Seller Is Giving Up": "" },
        { Year: "" },
        { Difference: "" },
        { Invoice: "" },
        { AmountOverInvoice: "" },
        { GivingOne: "" },
        { GivingTwo: "" },
      ],
    }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { SoldDate: false },
        { ProjectNumber: false },
        { InvoiceColumn: false },
        { SellingDlrFax: false },
        { "65AColumnName": false },
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
        { OUInvoice: true },
        { SumDifference: false },
        { BuyingBAC: false },
        { FeeUnit: false },
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
        { BuyingDlrContact: false },
        { BuyingEmail2: false },
        { "HB Seller Is Giving Up": false },
        { BuyingDlrOwningRep: false },
        { BuyingDlrZip: false },
        { "310ColumnName": false },
        { FindingRep: false },
        { SellingDlrPhone: false },
        { SellingBAC: false },
        { "261AColumnName": false },
        { BuyingDlrNumber: false },
        { SumSalePrice: false },
        { BuyingDlrCity: false },
        { BuyingDlrName: false },
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { AmountOverInvoice: "center" },
        { CheckPrice: "center" },
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
        { Description: "left" },
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
        { DOM: "" },
        { SalePrice: "" },
        { SoldDate: "" },
        { ProjectNumber: "" },
        { InvoiceColumn: "" },
        { SellingDlrFax: "" },
        { "65AColumnName": "" },
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
        { BuyingBAC: "" },
        { "310Amount": "" },
        { FeeUnit: "" },
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
        { BuyingDlrContact: "" },
        { BuyingEmail2: "" },
        { "HB Seller Is Giving Up": "" },
        { BuyingDlrOwningRep: "" },
        { BuyingDlrZip: "" },
        { "310ColumnName": "" },
        { FindingRep: "" },
        { SellingDlrPhone: "" },
        { SellingBAC: "" },
        { "261AColumnName": "" },
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
        { VinRt: "" },
        { GivingTwo: "" },
      ],
    }}
    columnFormats={{
      ordered: [
        { CheckPrice: "default" },
        { SalePrice: "default" },
        { Unit: "NumberDataCell" },
        { "310Amount": "CurrencyDataCell" },
        { "261A Seller Is Giving Up": "CurrencyDataCell" },
        { "HB Seller Is Giving Up": "CurrencyDataCell" },
        { "65A Seller Is Giving Up": "CurrencyDataCell" },
        { Year: "NumberDataCell" },
        { Difference: "default" },
        { Invoice: "default" },
        { AmountOverInvoice: "default" },
        { GivingOne: "default" },
        { GivingTwo: "default" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        {
          AmountOverInvoice:
            "{{SellingDlrAgreement.data.InvoiceColumnName[0]}}",
        },
        { DOM: "Age" },
        { OUInvoice: "{{SellingDlrAgreement.data.InvoiceColumnName[0]}}" },
        { "261A Seller Is Giving Up": "261A Giving" },
        { Invoice: "{{SellingDlrAgreement.data['310ColumnName'][0]}}\n" },
        { "HB Seller Is Giving Up": "HB Giving Up" },
        { GivingOne: "{{SellingDlrAgreement.data['261AColumnName'][0]}}" },
        { "65A Seller Is Giving Up": "65A Giving" },
        { VinRt: "Vin#" },
        { GivingTwo: "{{SellingDlrAgreement.data['65AColumnName'][0]}}" },
      ],
    }}
    columnTypeProperties={{
      ordered: [
        {
          CheckPrice: {
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
          Unit: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
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
          "261A Seller Is Giving Up": {
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
          "65A Seller Is Giving Up": {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
        {
          Year: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
        {
          Difference: {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
        {
          Invoice: {
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
          GivingOne: {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
        {
          GivingTwo: {
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
      { object: { id: "SalePrice", value: 94.578125 } },
      { object: { id: "VINRT", value: 93.09375 } },
      { object: { id: "261A Seller Is Giving Up", value: 102.578125 } },
      { object: { id: "65A Seller Is Giving Up", value: 89 } },
      { object: { id: "AmountOverInvoice", value: 136 } },
      { object: { id: "Difference", value: 87 } },
      { object: { id: "GivingOne", value: 131 } },
      { object: { id: "Year", value: 59 } },
      { object: { id: "Unit", value: 52 } },
      { object: { id: "GivingTwo", value: 120 } },
      { object: { id: "Description", value: 185.078125 } },
      { object: { id: "CheckPrice", value: 96.328125 } },
      { object: { id: "Invoice", value: 110.015625 } },
      { object: { id: "OUInvoice", value: 123 } },
      { object: { id: "VinRt", value: 95 } },
    ]}
    customButtonName=""
    data="{{ SellingDlrAgreement.data }}"
    doubleClickToEdit={true}
  />
  <NumberInput
    id="currency18"
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
    value="{{ ttlSellPriceNumberInput.value }}"
  />
  <Text
    id="text20"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    value="**YOU ARE AGREEING TO SELL THE ABOVE UNITS FOR**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency19"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value="{{ttlPurchasePriceNumberInput.value}}"
  />
  <Text
    id="text22"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    value="**YOU WILL BE RECEIVING A CHECK FROM THE BUYING DEALER IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency20"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value="{{differenceNumberInput.value}}"
  />
  <Text
    id="text23"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    marginType="normal"
    value="**YOU WILL REMIT THE DIFFERENCE OF**"
    verticalAlign="center"
  />
  <Text
    id="text43"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE DEALER TRADE NETWORK**"
    verticalAlign="center"
  />
</Modal>
