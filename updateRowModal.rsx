<Modal
  id="updateRowModal"
  _disclosedFields={{ array: [] }}
  buttonText="Update Row Data"
  closeOnOutsideClick={true}
  hidden=""
  modalHeightType="auto"
  modalWidth="40%"
>
  <NumberInput
    id="m_projectNumber"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    inputValue={0}
    label="Project Number"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].projectnumber  != m_projectNumber.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].projectnumber }}"
  />
  <TextInput
    id="m_loadNumber"
    _disclosedFields={{ array: ["background"] }}
    label="Load #"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0']['load #']  != m_loadNumber.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0']['load #'] }}"
  />
  <NumberInput
    id="m_unit"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    inputValue={0}
    label="Unit"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].unit  != m_unit.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].unit }}"
  />
  <TextInput
    id="m_year"
    _disclosedFields={{ array: ["background"] }}
    label="Year"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].year  != m_year.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].year }}"
  />
  <TextInput
    id="m_make"
    _disclosedFields={{ array: ["background"] }}
    label="Make"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].make  != m_make.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].make }}"
  />
  <TextInput
    id="m_desc"
    _disclosedFields={{ array: ["background"] }}
    label="Description"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].description  != m_desc.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].description }}"
  />
  <TextInput
    id="m_built"
    _disclosedFields={{ array: ["background"] }}
    label="Built Like"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].BuiltLike  != m_built.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].BuiltLike }}"
  />
  <TextInput
    id="m_vin"
    _disclosedFields={{ array: ["background"] }}
    label="VIN Number"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].VINNumber  != m_vin.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].VINNumber }}"
  />
  <NumberInput
    id="m_310"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="310 Amount"
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0']['310Amount']  != m_310.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0']['310Amount'] }}"
  />
  <NumberInput
    id="m_hb"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="HB Seller Is Giving Up"
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0']['HB Seller Is Giving Up'] != m_hb.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0']['HB Seller Is Giving Up'] }}"
  />
  <NumberInput
    id="m_261"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="261A Seller Is Giving Up"
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0']['261A Seller Is Giving Up']  != m_261.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0']['261A Seller Is Giving Up'] }}"
  />
  <NumberInput
    id="m_65"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="65A Seller Is Giving Up"
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0']['65A Seller Is Giving Up']  != m_65.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0']['65A Seller Is Giving Up'] }}"
  />
  <NumberInput
    id="m_fee"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    format="currency"
    inputValue={0}
    label="Fee Unit"
    marginType="normal"
    placeholder="Enter value"
    showSeparators={true}
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].FeeUnit  != m_fee.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].FeeUnit }}"
  />
  <NumberInput
    id="m_buyingNum"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    inputValue={0}
    label="Buying Dealer #"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].BuyingDlrNumber  != m_buyingNum.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].BuyingDlrNumber }}"
  />
  <TextInput
    id="m_sellingRep"
    _disclosedFields={{ array: ["background"] }}
    label="Selling Rep"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].sellingrep != m_sellingRep.value && m_sellingRep.value != \"\" ? '#03AC13' : '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].sellingrep }}"
  />
  <NumberInput
    id="m_sellingNum"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    inputValue={0}
    label="Selling Dealer #"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].SellingDlrNumber  != m_sellingNum.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].SellingDlrNumber }}"
  />
  <TextInput
    id="m_findingRep"
    _disclosedFields={{ array: ["background"] }}
    label="Finding Rep"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].findingrep  != m_findingRep.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].findingrep }}"
  />
  <NumberInput
    id="m_BPU"
    _disclosedFields={{ array: ["background"] }}
    currency="USD"
    inputValue={0}
    label="BPU"
    marginType="normal"
    placeholder="Enter value"
    style={{
      ordered: [
        {
          background:
            "{{ soldLoadDetailsTable.selectedRow.data['0'].BPU  != m_BPU.value ? '#03AC13' :  '#FFFFFF' }}",
        },
      ],
    }}
    value="{{ soldLoadDetailsTable.selectedRow.data['0'].BPU }}"
  />
  <Button
    id="button71"
    _disclosedFields={{ array: ["background"] }}
    marginType="normal"
    style={{ ordered: [{ background: "danger" }] }}
    text="Clear Updates"
  >
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{soldLoadDetailsTable.selectedRow.data['0'].projectnumber}}",
          },
        ],
      }}
      pluginId="m_projectNumber"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0']['load #']}}" },
        ],
      }}
      pluginId="m_loadNumber"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0'].unit}}" },
        ],
      }}
      pluginId="m_unit"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0'].year}}" },
        ],
      }}
      pluginId="m_year"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0'].make}}" },
        ],
      }}
      pluginId="m_make"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value: "{{soldLoadDetailsTable.selectedRow.data['0'].description}}",
          },
        ],
      }}
      pluginId="m_desc"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0'].BuiltLike}}" },
        ],
      }}
      pluginId="m_built"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{soldLoadDetailsTable.selectedRow.data['0'].VINNumber}}" },
        ],
      }}
      pluginId="m_vin"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{soldLoadDetailsTable.selectedRow.data['0']['310Amount']}}",
          },
        ],
      }}
      pluginId="m_310"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{soldLoadDetailsTable.selectedRow.data['0']['HB Seller Is Giving Up']}}",
          },
        ],
      }}
      pluginId="m_hb"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{soldLoadDetailsTable.selectedRow.data['0']['261A Seller Is Giving Up']}}",
          },
        ],
      }}
      pluginId="m_261"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{soldLoadDetailsTable.selectedRow.data['0']['65A Seller Is Giving Up']}}",
          },
        ],
      }}
      pluginId="m_65"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{ soldLoadDetailsTable.selectedRow.data['0'].FeeUnit }}" },
        ],
      }}
      pluginId="m_fee"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ soldLoadDetailsTable.selectedRow.data['0'].BuyingDlrNumber }}",
          },
        ],
      }}
      pluginId="m_buyingNum"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ soldLoadDetailsTable.selectedRow.data['0'].sellingrep }}",
          },
        ],
      }}
      pluginId="m_sellingRep"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ soldLoadDetailsTable.selectedRow.data['0'].SellingDlrNumber }}",
          },
        ],
      }}
      pluginId="m_sellingNum"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ soldLoadDetailsTable.selectedRow.data['0'].findingrep }}",
          },
        ],
      }}
      pluginId="m_findingRep"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{
        ordered: [
          { value: "{{ soldLoadDetailsTable.selectedRow.data['0'].BPU }}" },
        ],
      }}
      pluginId="m_BPU"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button70"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    text="Apply Updates"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateRow_modal"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="updateRowModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
