<GlobalFunctions>
  <Folder id="deprecated">
    <Function
      id="pdfFormatSDTransferSheet310CWPremium"
      funcBody={include(
        "./lib/pdfFormatSDTransferSheet310CWPremium.js",
        "string"
      )}
    />
    <Function
      id="pdfFormatSDTransferSheet310FTPrem"
      funcBody={include("./lib/pdfFormatSDTransferSheet310FTPrem.js", "string")}
    />
    <Function
      id="pdfFormatSDTransferSheet310FT"
      funcBody={include("./lib/pdfFormatSDTransferSheet310FT.js", "string")}
    />
    <Function
      id="pdfFormatSDTransferSheet310CW"
      funcBody={include("./lib/pdfFormatSDTransferSheet310CW.js", "string")}
    />
    <Function
      id="pdfFormatTransferSheetCW"
      funcBody={include("./lib/pdfFormatTransferSheetCW.js", "string")}
    />
    <Function
      id="pdfFormatTransferSheetFT"
      funcBody={include("./lib/pdfFormatTransferSheetFT.js", "string")}
    />
    <Function
      id="pdfFormatTape"
      funcBody={include("./lib/pdfFormatTape.js", "string")}
    />
    <RESTQuery
      id="PrintSDTransferSheet310CWPrem"
      body="{{pdfFormatSDTransferSheet310CWPremium.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=2c077b2b216829da&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintTape"
      body="{{getTapePDFTemplateObject.data}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=6de77b23a7b18110&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="TransferSheets"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/TransferSheets.sql", "string")}
      resourceDisplayName="DTN_INTERNAL"
      resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="if( {{ pickupLotCheckbox.value }} === true && {{ pickupLotCheckbox.disabled }} === false)
{  
  data?.SellingDlrAddress.forEach((item, i) => { data.SellingDlrAddress[i] = {{ sellingDlrLotInfo.value.SellingDlrAddress[0] }} });  
  data?.SellingDlrZip.forEach((item, i) => { data.SellingDlrZip[i] = {{ sellingDlrLotInfo.value.SellingDlrZip[0] }} });  
  data?.SellingDlrSt.forEach((item, i) => { data.SellingDlrSt[i] = {{ sellingDlrLotInfo.value.SellingDlrSt[0] }} });  
  data?.SellingDlrCity.forEach((item, i) => { data.SellingDlrCity[i] = {{ sellingDlrLotInfo.value.SellingDlrCity[0] }} });  
  data?.SellingDlrContact.forEach((item, i) => { data.SellingDlrContact[i] = {{ sellingDlrLotInfo.value.SellingDlrContact[0] }} });  
  data?.SellingDlrPhone.forEach((item, i) => { data.SellingDlrPhone[i] = {{ sellingDlrLotInfo.value.SellingDlrPhone[0] }} });  
}
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data;"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method={null}
        params={{ ordered: [] }}
        pluginId=""
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="SaveTransferSheetsURLs310FTPrem"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/SaveTransferSheetsURLs310FTPrem.sql", "string")}
      resourceDisplayName="DTN_INTERNAL"
      resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="Tape"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/Tape.sql", "string")}
      resourceDisplayName="DTN_INTERNAL"
      resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="Tape2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/Tape2.sql", "string")}
      resourceDisplayName="DTN_INTERNAL"
      resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="apitemplatecalls">
    <RESTQuery
      id="PrintSDTransferSheet310FTPrem"
      body="{{pdfFormatSDTransferSheet310FTPrem.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=9f377b23a81fa52a&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintSDTransferSheet310FT"
      body="{{pdfFormatSDTransferSheet310FT.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=b1177b23a81982ac&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintFCSheetCW"
      body="{{pdfFormatFCSheetCW.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=bb777b23a827f458&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintFCSheetFT"
      body="{{pdfFormatFCSheetFT.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=85e77b23a8281d6e&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintBDTransferSheet310FTPremium"
      body="{{pdfFormatBDTransferSheet310FTPremium.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=1eb77b23a811ea3c&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintBDTransferSheet310CW"
      body="{{pdfFormatBDTransferSheet310CW.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=25377b23a81d9250&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintSDTransferSheet310CW"
      body="{{pdfFormatSDTransferSheet310CW.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=98a77b23a81b0682&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintTransferSheetFT"
      body="{{pdfFormatTransferSheetFT.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=3bd77b23a814c83e&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintTransferSheetCW"
      body="{{pdfFormatTransferSheetCW.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=59b77b23a8106798&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintInvoice"
      body="{{pdfFormatInvoice.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=c6277b23a1903392&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintSellingDlrAgreementCW"
      body="{{pdfFormatSellingDlrAgreementCW.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=47377b23ab1f9a3e&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="PrintSellingDlrAgreementFT"
      body="{{pdfFormatSellingDlrAgreementFT.value}}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
      }
      query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=eee77b23a817cd18&output_html=1"
      queryTimeout="30000"
      resourceName="REST-WithoutResource"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleSellingDealerAgreementCW"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleSellingDealerAgreementCW.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleSellingDealerAgreementFT"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleSellingDealerAgreementFT.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheetCW"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheetCW.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheet310CW"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheet310CW.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheetFT"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheetFT.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheet310CWPrem"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheet310CWPrem.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheet310FTPrem"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheet310FTPrem.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheet310FT"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheet310FT.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleAWeirdMixtureOfSeeminglyUnrelatedQueries"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "./lib/handleAWeirdMixtureOfSeeminglyUnrelatedQueries.js",
        "string"
      )}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleTransferSheet310FTNoOwe"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/handleTransferSheet310FTNoOwe.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="featureFlags">
    <State
      id="hideSecondaryLot"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="true"
    />
  </Folder>
  <Folder id="transferSheets">
    <RESTQuery
      id="createCoreDocument"
      body={
        '[{"key":"documentType","value":"{{docType}}"},{"key":"creator","value":"{{ current_user.email }}"},{"key":"entityId","value":"{{entityId}}"}]'
      }
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query="Documents"
      resourceDisplayName="DTN Core Internal API"
      resourceName="ea4257cd-3219-443f-a292-019ac6549bce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="POST"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getSellingDealerTransferSheet"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/getSellingDealerTransferSheet.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getBuyingDealerTransferSheet"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/getBuyingDealerTransferSheet.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getFreightCarrierTransferSheet"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/getFreightCarrierTransferSheet.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="generateTransferSheets"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/generateTransferSheets.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId=""
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
  </Folder>
  <Folder id="documents">
    <RESTQuery
      id="getEntityIdForString"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query="Entity?stringId={{loadNumberSelect.value}}"
      resourceDisplayName="DTN Core Internal API"
      resourceName="ea4257cd-3219-443f-a292-019ac6549bce"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="createPDF"
      _additionalScope={["entityId", "docType"]}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/createPDF.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getDealersByLoad"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/getDealersByLoad.sql", "string")}
      queryDisabled="{{ !projectInput.value || !loadNumberSelect.value}}"
      resourceDisplayName="DTN_INTERNAL"
      resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getBuyerPrimaryContact"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSellerPrimaryContact"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <RESTQuery
      id="getSellerPrimaryContact"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query="contacts?entityId={{getDealersByLoad.data.SellingDealer[0]}}&primaryType=SALES&entityType=dealer"
      resourceDisplayName="DTN Core Internal API"
      resourceName="ea4257cd-3219-443f-a292-019ac6549bce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{getSellerPrimaryContact.data[0]}}" }] }}
        pluginId="sellingDealerPrimaryContact"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="sellingPrimaryContactWarningHidden"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="sellingDealerPrimaryContact"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getBuyerPrimaryContact"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query="contacts?entityId={{getDealersByLoad.data.BuyingDealer[0]}}&primaryType=SALES&entityType=dealer"
      resourceDisplayName="DTN Core Internal API"
      resourceName="ea4257cd-3219-443f-a292-019ac6549bce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{getBuyerPrimaryContact.data[0]}}" }] }}
        pluginId="buyingDealerPrimaryContact"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="buyingDealerPrimaryContact"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="sellingDealerAgreement">
    <JavascriptQuery
      id="generateSellingDealerAgreement"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/generateSellingDealerAgreement.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Function
    id="pdfFormatBDTransferSheet310FT"
    funcBody={include("./lib/pdfFormatBDTransferSheet310FT.js", "string")}
  />
  <SqlQueryUnified
    id="CloseProjectList"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/CloseProjectList.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="ProjectsTable"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="SelectLoad"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SelectLoad.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="TTLSellPrice"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="TTLSellPrice"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/TTLSellPrice.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="TTLLandedUnder"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/TTLLandedUnder.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="TTL310"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/TTL310.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="Difference"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/Difference.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="TTLPurchasePrice"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/TTLPurchasePrice.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="PayablesReceivables"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/PayablesReceivables.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="ProjectsTable"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/ProjectsTable.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId=""
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteFromSoldloads"
    actionType="DELETE_BY"
    bulkUpdatePrimaryKey="ID"
    changeset={
      '[{"key":"Load #","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'load #\'] }}"},{"key":"ProjectNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].projectnumber }}"},{"key":"Unit","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].unit }}"},{"key":"Year","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].year }}"},{"key":"Make","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].make }}"},{"key":"Description","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].description }}"},{"key":"BuiltLike","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BuiltLike }}"},{"key":"VINNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].VINNumber }}"},{"key":"310Amount","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'310Amount\'] }}"},{"key":"HB Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'HB Seller Is Giving Up\'] }}"},{"key":"261A Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'261A Seller Is Giving Up\'] }}"},{"key":"65A Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'65A Seller Is Giving Up\'] }}"},{"key":"FeeUnit","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].FeeUnit }}"},{"key":"BuyingDlrNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BuyingDlrNumber }}"},{"key":"SellingRep","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].sellingrep }}"},{"key":"SellingDlrNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].SellingDlrNumber }}"},{"key":"FindingRep","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].findingrep}}"},{"key":"BPU","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BPU }}"}]'
    }
    confirmationMessage="Are you sure you want to delete the selected units from soldloads and tblprojects?"
    editorMode="gui"
    enableBulkUpdates={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"ID","value":"{{ soldLoadDetailsTable.selectedRow.data.map(s => s.ID) }}","operation":"IN"}]'
    }
    records={
      '{{_.map(soldLoadDetailsTable.recordUpdates, row => _.pick(row, ["ID", "Project #", "load #", "Unit #", "Year", "Make", "Description", "BuiltLike", "VINNumber", "310Amount", "HB Giving Up", "261A Seller Is Giving Up", "65A Seller Is  Giving Up", "FeeUnit", "BuyDlr #", "Buying Dlr Name", "SellingRep", "SellDlr #", "Selling Dlr Name", "FindingRep", "Sold Date", "BPU"]))}}'
    }
    requireConfirmation={true}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="soldloads"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="deleteFromProjectsTable"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteFromProjectsTable"
    actionType="DELETE_BY"
    bulkUpdatePrimaryKey="ID"
    changeset={
      '[{"key":"Load #","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'load #\'] }}"},{"key":"ProjectNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].projectnumber }}"},{"key":"Unit","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].unit }}"},{"key":"Year","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].year }}"},{"key":"Make","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].make }}"},{"key":"Description","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].description }}"},{"key":"BuiltLike","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BuiltLike }}"},{"key":"VINNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].VINNumber }}"},{"key":"310Amount","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'310Amount\'] }}"},{"key":"HB Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'HB Seller Is Giving Up\'] }}"},{"key":"261A Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'261A Seller Is Giving Up\'] }}"},{"key":"65A Seller Is Giving Up","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'][\'65A Seller Is Giving Up\'] }}"},{"key":"FeeUnit","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].FeeUnit }}"},{"key":"BuyingDlrNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BuyingDlrNumber }}"},{"key":"SellingRep","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].sellingrep }}"},{"key":"SellingDlrNumber","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].SellingDlrNumber }}"},{"key":"FindingRep","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].findingrep}}"},{"key":"BPU","value":"{{ soldLoadDetailsTable.recordUpdates[\'0\'].BPU }}"}]'
    }
    confirmationMessage=""
    editorMode="gui"
    enableBulkUpdates={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"ID","value":"{{ soldLoadDetailsTable.selectedRow.data.map(s => s.ID2) }}","operation":"IN"}]'
    }
    records={
      '{{_.map(soldLoadDetailsTable.recordUpdates, row => _.pick(row, ["ID", "Project #", "load #", "Unit #", "Year", "Make", "Description", "BuiltLike", "VINNumber", "310Amount", "HB Giving Up", "261A Seller Is Giving Up", "65A Seller Is  Giving Up", "FeeUnit", "BuyDlr #", "Buying Dlr Name", "SellingRep", "SellDlr #", "Selling Dlr Name", "FindingRep", "Sold Date", "BPU"]))}}'
    }
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="tblprojects"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow_modal"
    actionType="UPDATE_BY"
    bulkUpdatePrimaryKey="ID"
    changeset={
      '[{"key":"Load #","value":"{{ m_loadNumber.value }}"},{"key":"ProjectNumber","value":"{{ m_projectNumber.value }}"},{"key":"Unit","value":"{{ m_unit.value }}"},{"key":"Year","value":"{{ m_year.value }}"},{"key":"Make","value":"{{ m_make.value }}"},{"key":"Description","value":"{{ m_desc.value }}"},{"key":"BuiltLike","value":"{{ m_built.value }}"},{"key":"VINNumber","value":"{{ m_vin.value }}"},{"key":"310Amount","value":"{{ m_310.value }}"},{"key":"HB Seller Is Giving Up","value":"{{ m_hb.value }}"},{"key":"261A Seller Is Giving Up","value":"{{ m_261.value }}"},{"key":"65A Seller Is Giving Up","value":"{{ m_65.value }}"},{"key":"FeeUnit","value":"{{ m_fee.value }}"},{"key":"BuyingDlrNumber","value":"{{ m_buyingNum.value}}"},{"key":"SellingRep","value":"{{ m_sellingRep.value }}"},{"key":"SellingDlrNumber","value":"{{ m_sellingNum.value }}"},{"key":"FindingRep","value":"{{ m_findingRep.value }}"},{"key":"BPU","value":"{{ m_BPU.value }}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"ID","value":"{{ soldLoadDetailsTable.selectedRow.data[\'0\'].ID }}","operation":"="}]'
    }
    records={
      '{{_.map(soldLoadDetailsTable.recordUpdates, row => _.pick(row, ["ID", "Project #", "load #", "Unit #", "Year", "Make", "Description", "BuiltLike", "VINNumber", "310Amount", "HB Giving Up", "261A Seller Is Giving Up", "65A Seller Is  Giving Up", "FeeUnit", "BuyDlr #", "Buying Dlr Name", "SellingRep", "SellDlr #", "Selling Dlr Name", "FindingRep", "Sold Date", "BPU"]))}}'
    }
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="soldloads"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateLoadNumber"
    actionType="UPDATE_BY"
    changeset={'[{"key":"Load #","value":"{{ loadNumber.value }}"}]'}
    editorMode="gui"
    enableBulkUpdates={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"ID","value":"{{ soldLoadDetailsTable.selectedRow.data.map(s => s.ID) }}","operation":"IN"}]'
    }
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="soldloads"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{ ordered: [{ rowIndex: "[]" }] }}
      pluginId="soldLoadDetailsTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="updateLoadNumber_api"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/updateLoadNumber_api.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateLoadNumber"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SqlQueryUnified
    id="FreightToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FreightToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="FreightAmtToSoldloads"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FT310PayableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FT310PayableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FT310ReceivableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FT310ReceivableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FTPayableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FTPayableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FTReceivableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FTReceivableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="CWPayableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/CWPayableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="CWReceivableToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/CWReceivableToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="GetMake"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/GetMake.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="ModifyLoadSoldloads"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/ModifyLoadSoldloads.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="ModifyProjectOnProjects"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/ModifyProjectOnProjects.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="DeletePayableReceivable"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/DeletePayableReceivable.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="ModifyPayableReceivables"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/ModifyPayableReceivables.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="UpdateTblProjects"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/UpdateTblProjects.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="ProjectsTable"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitCountTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitNumbersTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="UpdateSoldLoads"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/UpdateSoldLoads.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitCountTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitNumbersTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="Invoice"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/Invoice.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SellingDlrAgreement"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SellingDlrAgreement.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="pdfFormatInvoice"
    funcBody={include("./lib/pdfFormatInvoice.js", "string")}
  />
  <Function
    id="pdfFormatSellingDlrAgreementCW"
    funcBody={include("./lib/pdfFormatSellingDlrAgreementCW.js", "string")}
  />
  <Function
    id="pdfFormatFCSheetCW"
    funcBody={include("./lib/pdfFormatFCSheetCW.js", "string")}
  />
  <Function
    id="pdfFormatFCSheetFT"
    funcBody={include("./lib/pdfFormatFCSheetFT.js", "string")}
  />
  <Function
    id="pdfFormatBDTransferSheet310CW"
    funcBody={include("./lib/pdfFormatBDTransferSheet310CW.js", "string")}
  />
  <Function
    id="pdfFormatBDTransferSheet310FTPremium"
    funcBody={include(
      "./lib/pdfFormatBDTransferSheet310FTPremium.js",
      "string"
    )}
  />
  <RESTQuery
    id="PrintBDTransferSheet310FT"
    body="{{pdfFormatBDTransferSheet310FT.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=03a77b2b2164b77c&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="UpdateTblProjectPayables"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/UpdateTblProjectPayables.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FreightData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FreightData.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="UnitCountTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/UnitCountTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="UnitNumbersTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/UnitNumbersTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="FT310AtInvoiceRecToTape"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FT310AtInvoiceRecToTape.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="PayablesReceivables"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="FreightAmtToSoldloads"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/FreightAmtToSoldloads.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SelectUnitToDelete"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SelectUnitToDelete.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SelectLoadToDelete"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SelectLoadToDelete.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="DeleteUnitSoldloads"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/DeleteUnitSoldloads.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="DeleteUnitProject"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="DeleteUnitProject"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/DeleteUnitProject.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal23"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CloseProjectList"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="ProjectsTable"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitCountTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="UnitNumbersTest"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="VINValidityCheck"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="api/vin/validitycheck/{{table27.recordUpdates['0'].VINNumber}}"
    resourceDisplayName="DTN_localapi"
    resourceName="84d1de67-04e2-4a8f-8e8b-e8a9d9422556"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled={
        '{{(VINValidityCheck.data.message != true) && (VINValidityCheck.data.vin != "NULL")}}'
      }
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "warning" },
                { title: "VIN Error" },
                { description: "{{VINValidityCheck.data.errors['0']}}" },
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
    <Event
      enabled={
        '{{(VINValidityCheck.data.message != true) && (VINValidityCheck.data.vin != "NULL")}}'
      }
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Error" },
                { description: "{{VINValidityCheck.data.errors['0']}}" },
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
  </RESTQuery>
  <SqlQueryUnified
    id="SellerMatchTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SellerMatchTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="LoadNumbersTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/LoadNumbersTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="DealerNumbersTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/DealerNumbersTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SoldDateTest"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SoldDateTest.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="pdfFormatSellingDlrAgreementFT"
    funcBody={include("./lib/pdfFormatSellingDlrAgreementFT.js", "string")}
  />
  <SqlQueryUnified
    id="TransferSheets2"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/TransferSheets2.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="if( {{ pickupLotCheckbox.value }} === true && {{ pickupLotCheckbox.disabled }} === false)
{  
  data?.SellingDlrAddress.forEach((item, i) => { data.SellingDlrAddress[i] = {{ sellingDlrLotInfo.value.SellingDlrAddress[0] }} });  
  data?.SellingDlrZip.forEach((item, i) => { data.SellingDlrZip[i] = {{ sellingDlrLotInfo.value.SellingDlrZip[0] }} });  
  data?.SellingDlrSt.forEach((item, i) => { data.SellingDlrSt[i] = {{ sellingDlrLotInfo.value.SellingDlrSt[0] }} });  
  data?.SellingDlrCity.forEach((item, i) => { data.SellingDlrCity[i] = {{ sellingDlrLotInfo.value.SellingDlrCity[0] }} });  
  data?.SellingDlrContact.forEach((item, i) => { data.SellingDlrContact[i] = {{ sellingDlrLotInfo.value.SellingDlrContact[0] }} });  
  data?.SellingDlrPhone.forEach((item, i) => { data.SellingDlrPhone[i] = {{ sellingDlrLotInfo.value.SellingDlrPhone[0] }} });  
}
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data;"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="pdfFormatTransferSheetCW2"
    funcBody={include("./lib/pdfFormatTransferSheetCW2.js", "string")}
  />
  <Function
    id="pdfFormatTransferSheetFT2"
    funcBody={include("./lib/pdfFormatTransferSheetFT2.js", "string")}
  />
  <Function
    id="pdfFormatSDTransferSheet310CW2"
    funcBody={include("./lib/pdfFormatSDTransferSheet310CW2.js", "string")}
  />
  <Function
    id="pdfFormatSDTransferSheet310FT2"
    funcBody={include("./lib/pdfFormatSDTransferSheet310FT2.js", "string")}
  />
  <Function
    id="pdfFormatSDTransferSheet310FTPrem2"
    funcBody={include("./lib/pdfFormatSDTransferSheet310FTPrem2.js", "string")}
  />
  <Function
    id="pdfFormatSDTransferSheet310CWPrem2"
    funcBody={include("./lib/pdfFormatSDTransferSheet310CWPrem2.js", "string")}
  />
  <RESTQuery
    id="PrintTransferSheetCW2"
    body="{{pdfFormatTransferSheetCW2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=59b77b23a8106798&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="PrintTransferSheetFT2"
    body="{{pdfFormatTransferSheetFT2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=3bd77b23a814c83e&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="PrintSDTransferSheet310CW2"
    body="{{pdfFormatSDTransferSheet310CW2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=98a77b23a81b0682&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="PrintSDTransferSheet310FT2"
    body="{{pdfFormatSDTransferSheet310FT2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=b1177b23a81982ac&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="PrintSDTransferSheet310FTPrem2"
    body="{{pdfFormatSDTransferSheet310FTPrem2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=9f377b23a81fa52a&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="PrintSDTransferSheet310CWPrem2"
    body="{{pdfFormatSDTransferSheet310CWPrem2.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=82b77b23aa04dd0e&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetsURLs310CW"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetsURLs310CW.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetURLsCW"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetURLsCW.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetsURLs310CWPrem"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetsURLs310CWPrem.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetURLsFT"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetURLsFT.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetsURLs310FT"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetsURLs310FT.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetsURLs310FTPrem2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetsURLs310FTPrem2.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="pdfFormatBDTransferSheet310FTNoOwe"
    funcBody={include("./lib/pdfFormatBDTransferSheet310FTNoOwe.js", "string")}
  />
  <RESTQuery
    id="PrintBDTransferSheet310FTNoOwe"
    body="{{pdfFormatBDTransferSheet310FTNoOwe.value}}"
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"X-API-KEY","value":"b372NDQ6MzkyMDptZGZyWHhBODZEb1JaTmV"},{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    query="https://rest-us.apitemplate.io/v2/create-pdf?template_id=4fa77b2385b76440&output_html=1"
    queryTimeout="30000"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SaveTransferSheetsURLs310FTNoOwe"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SaveTransferSheetsURLs310FTNoOwe.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="ClearTransferInfo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/ClearTransferInfo.js", "string")}
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SelectDealerForInvoicing"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/SelectDealerForInvoicing.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="Invoice2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/Invoice2.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="sp_Store_Load_Pricing_Call"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/sp_Store_Load_Pricing_Call.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="ConsistentSoldLoadsSoldDates"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/ConsistentSoldLoadsSoldDates.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).length > 1"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled="{{ConsistentSoldLoadsSoldDates.data}}"
      event="success"
      method="open"
      params={{ ordered: [] }}
      pluginId="soldLoadsDatesErrorModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="GetSellingDlrLotInfo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration="3"
    query={include("./lib/GetSellingDlrLotInfo.sql", "string")}
    queryFailureConditions={
      '[{"condition":"{{ error }}","message":"\\"Please try to reset again, or manually enter pickup information. Error message: \\" + {{ data.error.message }}"}]'
    }
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    successMessage={'"Selling dealer info gathered successfully"'}
    transformer="// Query results are available as the `data` variable
return data[0];"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ GetSellingDlrLotInfo.data }}" }] }}
      pluginId="sellingDlrLotInfo"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="setValue"
      params={{ ordered: [{ value: "{}" }] }}
      pluginId="sellingDlrLotInfo"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="sellingDlrLotInfo"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{}"
  />
  <JavascriptQuery
    id="pickupLotModalCloseHandler"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/pickupLotModalCloseHandler.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="transferSheetsOpen"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/transferSheetsOpen.js", "string")}
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="downloadAllTransferSheets"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="sellingDealerPrimaryContact"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <State
    id="buyingDealerPrimaryContact"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <JavascriptQuery
    id="printSDAButtonHandler"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/printSDAButtonHandler.js", "string")}
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="sellingPrimaryContactWarningHidden"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="true"
  />
  <SqlQueryUnified
    id="isProjectDeleted"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    query={include("./lib/isProjectDeleted.sql", "string")}
    resourceDisplayName="DTN_INTERNAL"
    resourceName="4913768e-79c5-49ef-8642-0af3fcb8030d"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
