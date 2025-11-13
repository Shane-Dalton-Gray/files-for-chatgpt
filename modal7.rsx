<Modal
  id="modal7"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
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
  modalHeight="600"
  modalWidth="1000"
>
  <Text
    id="text24"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**SELLING DEALER AGREEMENT - FT**"
    verticalAlign="center"
  />
  <NumberInput
    id="numberInput7"
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
    id="textInput15"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    labelWidth="30"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput8"
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
  <TextInput
    id="textInput16"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Dealer Name"
    labelWidth="21"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{SellingDlrAgreement.data.SellingDlrName['0']}}"
  />
  <TextInput
    id="textInput17"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="City"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{SellingDlrAgreement.data.SellingDlrCity['0']}}"
  />
  <TextInput
    id="textInput18"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="St"
    labelWidth="22"
    marginType="normal"
    placeholder="Enter value"
    readOnly="TRUE"
    value="{{SellingDlrAgreement.data.SellingDlrSt['0']}}"
  />
  <TableLegacy
    id="table16"
    _columns={[
      "Unit",
      "VinRt",
      "Year",
      "Description",
      "DOM",
      "HB Seller Is Giving Up",
      "GivingOne",
      "GivingTwo",
      "ProjectNumber",
      "LoadNumbers",
      "VINNumber",
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
      "AmountOverInvoice",
      "Invoice",
      "SumCheckPrice",
      "SumSalePrice",
      "SumDifference",
      "310ColumnName",
      "261AColumnName",
      "65AColumnName",
      "InvoiceColumnName",
      "OUInvoice",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { Unit: "sum" },
        { Year: "sum" },
        { "HB Seller Is Giving Up": "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { Unit: "" },
        { Year: "" },
        { "HB Seller Is Giving Up": "" },
        { "261A Seller Is Giving Up": "" },
        { "65A Seller Is Giving Up": "" },
      ],
    }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { CheckPrice: false },
        { SalePrice: false },
        { SoldDate: false },
        { ProjectNumber: false },
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
        { OUInvoice: false },
        { SumDifference: false },
        { BuyingBAC: false },
        { "310Amount": false },
        { FeeUnit: false },
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
        { BuyingDlrContact: false },
        { BuyingEmail2: false },
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
        { Difference: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { DOM: "center" },
        { Unit: "center" },
        { "261A Seller Is Giving Up": "center" },
        { "HB Seller Is Giving Up": "center" },
        { GivingOne: "center" },
        { "65A Seller Is Giving Up": "center" },
        { Description: "left" },
        { Year: "center" },
        { VINRT: "center" },
        { VinRt: "center" },
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
        { Unit: "NumberDataCell" },
        { Year: "NumberDataCell" },
        { "HB Seller Is Giving Up": "CurrencyDataCell" },
        { "261A Seller Is Giving Up": "CurrencyDataCell" },
        { "65A Seller Is Giving Up": "CurrencyDataCell" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { "HB Seller Is Giving Up": "HB Seller Giving Up" },
        { "261A Seller Is Giving Up": "261A Seller Giving Up" },
        { "65A Seller Is Giving Up": "65A Seller Giving Up" },
        { VinRt: "Vin #" },
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
      ],
    }}
    columnWidths={[
      { object: { id: "VINRT", value: 96.21875 } },
      { object: { id: "HB Seller Is Giving Up", value: 148.765625 } },
      { object: { id: "261A Seller Is Giving Up", value: 147.9375 } },
      { object: { id: "Unit", value: 55.71875 } },
      { object: { id: "VinRt", value: 92 } },
      { object: { id: "DOM", value: 64 } },
      { object: { id: "GivingOne", value: 130.546875 } },
      { object: { id: "Year", value: 61.015625 } },
      { object: { id: "Description", value: 214.421875 } },
    ]}
    customButtonName=""
    data="{{SellingDlrAgreement.data}}"
    doubleClickToEdit={true}
  />
  <NumberInput
    id="currency21"
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
    value="{{differenceNumberInput.value}}"
  />
  <Text
    id="text25"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TOTAL AMOUNT SELLER GIVING UP THIS LOAD**"
    verticalAlign="center"
  />
  <Text
    id="text26"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU WILL TRANSFER THE ABOVE UNITS INTO THE BUYING DEALER'S INVENTORY @ LINE 310. YOU WILL REMIT**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency22"
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
    value="{{differenceNumberInput.value}}"
  />
  <Text
    id="text27"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**THE DIFFERENCE OF**"
    verticalAlign="center"
  />
</Modal>
