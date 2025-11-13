<Modal
  id="modal5"
  _disclosedFields={{ array: [] }}
  buttonText="Open Modal"
  events={[]}
  hidden="true"
  modalHeight="700"
  modalWidth="1000"
>
  <Text
    id="text44"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    marginType="normal"
    style={{ ordered: [{ color: "primary" }] }}
    value="**INVOICE**"
    verticalAlign="center"
  />
  <NumberInput
    id="numberInput3"
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
    id="textInput2"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Invoice Load #"
    labelWrap={true}
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{loadNumberSelect.value}}"
  />
  <Date
    id="date2"
    _disclosedFields={{ array: [] }}
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="Sold Date"
    marginType="normal"
    readOnly="true"
    value="{{Invoice.data.Solddate['0']}}"
  />
  <TextInput
    id="textInput3"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="DTN Rep"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.OwningRep['0']}}"
  />
  <NumberInput
    id="numberInput4"
    _defaultValue={null}
    _disclosedFields={{ array: [] }}
    currency="USD"
    label="Cust ID"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    showStepper={true}
    value="{{Invoice.data.DTNNumber['0']}}"
  />
  <TextInput
    id="textInput4"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Name"
    labelWidth="10"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data['Dealer Name']['0']}}"
  />
  <TextInput
    id="textInput5"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Address"
    labelWidth="18"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.Address['0']}}"
  />
  <TextInput
    id="textInput6"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="City"
    labelWidth="12"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.City['0']}}"
  />
  <TextInput
    id="textInput7"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="St"
    labelWidth="25"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.St['0']}}"
  />
  <TextInput
    id="textInput8"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Zip"
    labelWidth="14"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.Zip['0']}}"
  />
  <TextInput
    id="textInput9"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="Phone"
    labelWidth="20"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.Phone['0']}}"
  />
  <TextInput
    id="textInput10"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="ATTN"
    labelWidth="16"
    marginType="normal"
    placeholder="Enter value"
    value="{{Invoice.data.Contact['0']}}"
  />
  <TableLegacy
    id="table14"
    _columnSummaryTypes={{ ordered: [{ Unit: "sum" }] }}
    _columnSummaryValues={{ ordered: [{ Unit: "" }] }}
    _columnVisibility={{
      ordered: [
        { Contact: false },
        { OwningRep: false },
        { St: false },
        { Zip: false },
        { SoldDate: false },
        { ProjectNumber: false },
        { DTNNumber: false },
        { City: false },
        { AmtDue: false },
        { Account: false },
        { Phone: false },
        { "Dealer Name": false },
        { AmtPaid: false },
        { Address: false },
        { InvoiceNumber: false },
        { Amount: false },
      ],
    }}
    _compatibilityMode={false}
    columnAlignment={{
      ordered: [
        { Unit: "center" },
        { Description: "center" },
        { VinRt: "center" },
      ],
    }}
    columnColors={{
      ordered: [
        { Contact: "" },
        { OwningRep: "" },
        { St: "" },
        { Zip: "" },
        { Solddate: "" },
        { SoldDate: "" },
        { ProjectNumber: "" },
        { Unit: "" },
        { DTNNumber: "" },
        { City: "" },
        { CellPhone: "" },
        { AmtDue: "" },
        { Account: "" },
        { Phone: "" },
        { "Dealer Name": "" },
        { AmtPaid: "" },
        { Address: "" },
        { InvoiceNumber: "" },
        { Amount: "" },
        { FirstName: "" },
        { Email: "" },
        { Description: "" },
        { Fax: "" },
        { fax: "" },
        { VinRt: "" },
      ],
    }}
    columnFormats={{ ordered: [{ Unit: "NumberDataCell" }] }}
    columnTypeProperties={{
      ordered: [
        {
          Unit: { ordered: [{ showSeparators: false }, { padDecimal: true }] },
        },
      ],
    }}
    customButtonName=""
    data="{{ Invoice.data }}"
    doubleClickToEdit={true}
  />
  <TextInput
    id="currency14"
    _disclosedFields={{ array: [] }}
    label="Total Invoice"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.Amount['0']}}"
  />
  <TextInput
    id="currency15"
    _disclosedFields={{ array: [] }}
    label="Amount Paid"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.AmtPaid['0']}}"
  />
  <TextInput
    id="currency16"
    _disclosedFields={{ array: [] }}
    label="Amount Due"
    marginType="normal"
    placeholder="Enter value"
    readOnly="true"
    value="{{Invoice.data.AmtDue['0']}}"
  />
</Modal>
