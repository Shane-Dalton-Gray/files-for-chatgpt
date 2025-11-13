<Modal
  id="modal19"
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
    id="text71"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**TRANSFER SHEETS (CW AND 310)(PREMIUM)**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput95"
    _disclosedFields={{ array: [] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{ loadNumberSelect.value }}"
  />
  <NumberInput
    id="numberInput33"
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="Project #"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{TransferSheets.data.ProjectNumber['0']}}"
  />
  <Text
    id="text72"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**S/D**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput96"
    _disclosedFields={{ array: [] }}
    label="Freight Method"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{freightMethodSelect.value}}"
  />
  <NumberInput
    id="currency36"
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
    id="text74"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**SELLING DEALER INFO**"
    verticalAlign="center"
  />
  <TextInput
    id="textInput97"
    _disclosedFields={{ array: [] }}
    hidden="false"
    label="DEALER NAME"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.SellingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput34"
    _disclosedFields={{ array: [] }}
    currency="USD"
    inputValue={0}
    label="Dealer #"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{TransferSheets.data.SellingDlrNumber['0']}}"
  />
  <TableLegacy
    id="table25"
    _columns={[
      "Make",
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
      "Rep",
      "LandedUnder",
      "Landed",
      "SumLanded",
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
      "SoldDate",
      "SalePrice",
      "CheckPrice",
      "Difference",
      "AmountOverInvoice",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "INVOICEDATE",
      "FindingRep",
      "SellingRep",
      "SellingEmail",
      "SellingEmail2",
      "BuyingEmail",
      "BuyingEmail2",
      "SellingBAC",
      "BuyingBAC",
      "SumDifferenceNeg",
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
      "ColumnNameLand",
    ]}
    _columnSummaryTypes={{ ordered: [{ Year: "sum" }] }}
    _columnSummaryValues={{ ordered: [{ Year: "" }] }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { ColumnName65A: false },
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
        { GivingOne: false },
        { BuyingDlrCity: false },
        { BuyingDlrName: false },
        { "65A Seller Is Giving Up": false },
        { SellingDlrAddress: false },
        { INVOICEDATE: false },
        { ID: false },
        { SellingDlrSt: false },
        { Rep: false },
        { GivingTwo: false },
        { SumLandedPos: false },
        { FreightCoPhone: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { CheckPrice: "center" },
        { DOM: "center" },
        { SalePrice: "center" },
        { Unit: "center" },
        { OUInvoice: "center" },
        { Invoice: "center" },
        { Description: "left" },
        { Year: "right" },
        { Difference: "center" },
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
        { SumLandedPos: "" },
        { FreightCoPhone: "" },
      ],
    }}
    columnEditable={{ ordered: [{ Make: false }] }}
    columnFormats={{ ordered: [{ Year: "NumberDataCell" }] }}
    columnHeaderNames={{ ordered: [{ VINRT: "VIN #" }] }}
    columnTypeProperties={{
      ordered: [
        {
          Year: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
      ],
    }}
    customButtonName=""
    data="{{ TransferSheets.data }}"
    doubleClickToEdit={true}
    showBoxShadow={false}
  />
  <Text
    id="text75"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**BUYING DEALER INFO**"
    verticalAlign="center"
  />
  <Text
    id="text73"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    verticalAlign="center"
  />
  <TextInput
    id="textInput98"
    _disclosedFields={{ array: [] }}
    label="DEALER NAME"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{TransferSheets.data.BuyingDlrName['0']}}"
  />
  <NumberInput
    id="numberInput35"
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
  <NumberInput
    id="currency37"
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
    value="{{ttlSellPriceNumberInput.value}}"
  />
  <NumberInput
    id="currency38"
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
    value="{{ttlPurchasePriceNumberInput.value}}"
  />
  <Text
    id="text76"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU AGREED TO SELL THE ABOVE UNITS @**"
    verticalAlign="center"
  />
  <Text
    id="text77"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU WILL BE RECEIVING A CHECK FROM THE BUYING DEALER IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <NumberInput
    id="currency39"
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
    value="{{differenceNumberInput.value*-1}}"
  />
  <Text
    id="text78"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**YOU WILL RECEIVE FUNDS IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <Text
    id="text79"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**FROM THE DEALER TRADENETWORK TO COVER THE SHORTAGE**"
    verticalAlign="center"
  />
  <Text
    id="text80"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    style={{ ordered: [{ color: "success" }] }}
    value="**---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------**"
    verticalAlign="center"
  />
  <Text
    id="text81"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**B/D**"
    verticalAlign="center"
  />
  <TableLegacy
    id="table26"
    _columns={[
      "Make",
      "ProjectNumber",
      "LoadNumbers",
      "Unit",
      "VINRT",
      "VINNumber",
      "Year",
      "Description",
      "Invoice",
      "DOM",
      "Rep",
      "LandedUnder",
      "Landed",
      "SumLanded",
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
      "SoldDate",
      "SalePrice",
      "CheckPrice",
      "Difference",
      "AmountOverInvoice",
      "SumSalePrice",
      "SumCheckPrice",
      "SumDifference",
      "INVOICEDATE",
      "FindingRep",
      "SellingRep",
      "SellingEmail",
      "SellingEmail2",
      "BuyingEmail",
      "BuyingEmail2",
      "SellingBAC",
      "BuyingBAC",
      "SumDifferenceNeg",
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
      "OUInvoice",
      "GivingOne",
      "GivingTwo",
      "ColumnNameLand",
    ]}
    _columnSummaryTypes={{ ordered: [{ Year: "sum" }] }}
    _columnSummaryValues={{ ordered: [{ Year: "" }] }}
    _columnVisibility={{
      ordered: [
        { BuyingEmail: false },
        { FreightUsed: false },
        { BuyingDlrPhone: false },
        { AmountOverInvoice: false },
        { CheckPrice: true },
        { ColumnName65A: false },
        { DOM: false },
        { SalePrice: false },
        { SoldDate: false },
        { ProjectNumber: false },
        { SellingDlrFax: false },
        { SellingDlrNumber: false },
        { Unit: true },
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
        { SumLandedPos: false },
        { FreightCoPhone: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { Unit: "center" },
        { VINRT: "center" },
        { Year: "center" },
        { Invoice: "center" },
        { Landed: "center" },
        { CheckPrice: "center" },
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
        { SumLandedPos: "" },
        { FreightCoPhone: "" },
      ],
    }}
    columnFormats={{ ordered: [{ Year: "NumberDataCell" }] }}
    columnHeaderNames={{
      ordered: [
        { VINRT: "VIN #" },
        { Invoice: "310/Invoice" },
        { CheckPrice: "Check Amount" },
      ],
    }}
    columnTypeProperties={{
      ordered: [
        {
          Year: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
      ],
    }}
    customButtonName=""
    data="{{ TransferSheets.data }}"
    doubleClickToEdit={true}
    showBoxShadow={false}
  />
  <NumberInput
    id="currency40"
    _disclosedFields={{ array: [] }}
    currency="USD"
    format="currency"
    hideLabel={true}
    inputValue={0}
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value="{{ttlPurchasePriceNumberInput.value}}"
  />
  <Text
    id="text82"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**PLEASE REMIT FUNDS IN THE AMOUNT OF**"
    verticalAlign="center"
  />
  <Text
    id="text83"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="**TO THE SELLING DEALER**"
    verticalAlign="center"
  />
</Modal>
