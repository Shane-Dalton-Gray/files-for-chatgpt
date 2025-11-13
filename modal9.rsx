<Modal
  id="modal9"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  closeOnOutsideClick={true}
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
  modalHeight="1000"
  modalWidth="1500"
>
  <Text
    id="text31"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**TRANSFER SHEETS (CW AND 310)**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput37"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <NumberInput
    id="numberInput14"
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
    id="text33"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**S/D**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput38"
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
    id="currency25"
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
    id="text32"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput39"
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
    id="numberInput15"
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
  <TableLegacy
    id="table18"
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
      "GivingOne",
      "GivingTwo",
      "SalePrice",
      "Landed",
      "CheckPrice",
      "Difference",
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
        { "310Amount": "sum" },
        { "HB Seller Is Giving Up": "sum" },
        { "261A Seller Is Giving Up": "sum" },
        { "65A Seller Is Giving Up": "sum" },
        { SalePrice: "" },
        { CheckPrice: "" },
        { Difference: "" },
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
        { CheckPrice: "" },
        { Difference: "" },
        { AmountOverInvoice: "" },
      ],
    }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { ColumnName65A: false },
        { DOM: true },
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
        { OUInvoice: true },
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
        { GivingOne: true },
        { BuyingDlrCity: false },
        { BuyingDlrName: false },
        { "65A Seller Is Giving Up": false },
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
        { Difference: true },
        { GivingTwo: true },
        { LandedOver: false },
        { FreightCoPhone: false },
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
        { Landed: "center" },
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
        { LandedOver: "center" },
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
        { CheckPrice: "default" },
        { Difference: "default" },
        { AmountOverInvoice: "CurrencyDataCell" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { AmountOverInvoice: "Amount Over" },
        { CheckPrice: "Check Amt" },
        { DOM: "AGE" },
        { SalePrice: "Sale Price" },
        { OUInvoice: "Over/Under Invoice" },
        { "261A Seller Is Giving Up": "261A Seller Giving" },
        { Invoice: "310 Amount" },
        { "HB Seller Is Giving Up": "HB Seller Giving" },
        { GivingOne: "261A Giving" },
        { "65A Seller Is Giving Up": "65A Seller Giving" },
        { VINRT: "VIN#" },
        { GivingTwo: "65A Giving" },
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
      { object: { id: "Unit", value: 62 } },
      { object: { id: "VINRT", value: 90.90625 } },
      { object: { id: "Year", value: 59.234375 } },
      { object: { id: "310Amount", value: 97.859375 } },
      { object: { id: "CheckPrice", value: 116.140625 } },
      { object: { id: "Difference", value: 99.5625 } },
      { object: { id: "HB Seller Is Giving Up", value: 132.890625 } },
      { object: { id: "65A Seller Is Giving Up", value: 140.890625 } },
      { object: { id: "SalePrice", value: 129.8125 } },
      { object: { id: "261A Seller Is Giving Up", value: 131.890625 } },
      { object: { id: "Invoice", value: 127.46875 } },
      { object: { id: "GivingOne", value: 101.359375 } },
      { object: { id: "GivingTwo", value: 105.375 } },
      { object: { id: "DOM", value: 56.96875 } },
      { object: { id: "OUInvoice", value: 135.375 } },
      { object: { id: "Description", value: 305.8125 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <Text
    id="text34"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput40"
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
    id="numberInput16"
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
  <NumberInput
    id="currency26"
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
    value="{{ttlSellPriceNumberInput.value}}"
  />
  <NumberInput
    id="currency27"
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
    value="{{ttlPurchasePriceNumberInput.value}}"
  />
  <Text
    id="text35"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU AGREED TO SELL THE ABOVE UNITS @**"
    verticalAlign="center"
  />
  <Text
    id="text36"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU WILL BE RECEIVING A CHECK FROM THE BUYING DEALER IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency28"
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
    id="text37"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**PLEASE REMIT THE DIFFERENCE OF**"
    verticalAlign="center"
  />
  <Text
    id="text38"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE DEALER TRADE NETWORK**"
    verticalAlign="center"
  />
  <Text
    id="text39"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ color: "success" }] }}
    value="**---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------**"
    verticalAlign="center"
  />
  <Text
    id="text40"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**B/D**"
    verticalAlign="center"
  />
  <TableLegacy
    id="table19"
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
      "Invoice",
      "Landed",
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
      "DOM",
      "AmountOverInvoice",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "FreightCoContact",
      "FreightCoPhone",
      "ColumnName310",
      "InvoiceColumnName",
      "ColumnName261A",
      "ColumnName65A",
      "OUInvoice",
      "GivingOne",
      "GivingTwo",
      "ColumnNameLand",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { Unit: "sum" },
        { Year: "sum" },
        { "310Amount": "sum" },
        { LandedUnder: "sum" },
        { LandedOver: "sum" },
        { CheckPrice: "" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [
        { Unit: "" },
        { Year: "" },
        { "310Amount": "" },
        { LandedUnder: "" },
        { LandedOver: "" },
        { CheckPrice: "" },
      ],
    }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
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
        { FeeUnit: false },
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
        { FreightCoPhone: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { CheckPrice: "center" },
        { Unit: "center" },
        { "310Amount": "center" },
        { Landed: "center" },
        { Invoice: "center" },
        { LandedUnder: "center" },
        { Year: "center" },
        { VINRT: "center" },
        { LandedOver: "center" },
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
        { LandedUnder: "CurrencyDataCell" },
        { LandedOver: "CurrencyDataCell" },
        { CheckPrice: "default" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { VINRT: "VIN#" },
        { LandedOver: "Landed Over" },
        { CheckPrice: "Check Amount" },
        { Invoice: "310 Amount" },
        { Landed: "Landed Over/Under" },
      ],
    }}
    columnMappers={{
      ordered: [{ LandedUnder: "{{TransferSheets.data.LandedUnder*-1}}" }],
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
          LandedUnder: {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
        {
          LandedOver: {
            ordered: [
              { showSeparators: true },
              { currency: "USD" },
              { padDecimal: true },
            ],
          },
        },
        {
          CheckPrice: {
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
      { object: { id: "Unit", value: 94.421875 } },
      { object: { id: "VINRT", value: 107.4375 } },
      { object: { id: "Year", value: 98.828125 } },
      { object: { id: "Description", value: 335.578125 } },
      { object: { id: "310Amount", value: 263.25 } },
      { object: { id: "LandedOver", value: 245.75 } },
    ]}
    customButtonName=""
    data="{{TransferSheets.data}}"
    doubleClickToEdit={true}
  />
  <NumberInput
    id="currency29"
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
    value="{{ttlPurchasePriceNumberInput.value}}"
  />
  <Text
    id="text41"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**PLEASE REMIT FUNDS IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <Text
    id="text42"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE SELLING DEALER**"
    verticalAlign="center"
  />
</Modal>
