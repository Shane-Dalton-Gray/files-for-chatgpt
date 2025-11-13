<Container
  id="container2"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle2"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      marginType="normal"
      value="### Project Tests"
      verticalAlign="center"
    />
    <Text
      id="text95"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      marginType="normal"
      style={{ ordered: [{ color: "danger" }] }}
      value="Click Button For Failure Details"
      verticalAlign="center"
    />
  </Header>
  <View id="05008" viewKey="View 1">
    <Button
      id="button61"
      _disclosedFields={{ array: ["background"] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background:
              "{{UnitCountTest.data.PassFail == 'PASS'?'green':'red'}}",
          },
        ],
      }}
      text="Unit Count"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "The amount of units do not match between the Sold Loads table and the Project table. Please make adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button62"
      _disclosedFields={{ array: ["background"] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background:
              "{{UnitNumbersTest.data.PassFail == 'PASS'?'green':'red'}}",
          },
        ],
      }}
      text="Unit #"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "The unit numbers do not match between the Sold Loads table and the Project table. Please make adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button65"
      _disclosedFields={{ array: ["background"] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background:
              "{{SellerMatchTest.data.Results == 'PASS'?'green':'red'}}",
          },
        ],
      }}
      text="Selling Rep"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "The Selling Rep On The Projects Table Does Not Match The Selling Rep On The Sold Loads Table. Please Make Adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button63"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background:
              "{{LoadNumbersTest.data.Results == 'PASS'?'green':'red'}}",
          },
        ],
      }}
      text="Load Numbers"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "Load Numbers Are Not Matching Between The Sold Loads Table, The Project Table And The Payables Table. Please Make Adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button64"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background:
              "{{DealerNumbersTest.data.Results.includes(r => r !== 'PASS')? 'red':'green'}}",
          },
        ],
      }}
      text="DTN Numbers"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "DTN Numbers Are Not Matching Between The Sold Loads Table, The Project Table And The Payables Table. Please Make Adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button66"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      style={{
        ordered: [
          {
            background: "{{SoldDateTest.data.Results == 'PASS'?'green':'red'}}",
          },
        ],
      }}
      text="Sold Date"
    >
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    description:
                      "Sold Dates Are Not Matching Between The Sold Loads Table And The Payables Table. Please Make Adjustments.",
                  },
                  { duration: "7" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
