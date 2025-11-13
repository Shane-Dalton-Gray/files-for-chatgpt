//THIS HAS BEEN DEPRECATED - NEED TO REMOVE 
const tape = formatDataAsArray({{ Tape.data }})

let newTape = {};
let receivables = [];
let payables = [];

for(const i of tape){
  const newItem = {
    'DealerName': i["Dealer Name"],
    'DTNNumber': i.DTNNumber,
    'City': i.City,
    'St': i.St,
    'Amount': i.Amount
  }
  if(i.Account == "Receivable"){
    receivables.push(newItem)
  } else {
    payables.push(newItem);
  }
}

//const profit = parseInt(tape[0].TTLProfit)
//craft JSON object for API Template 
newTape.projectnumber = tape[0].ProjectNumber
newTape.Solddate = tape[0].Solddate
newTape.profit = tape[0].TTLProfit
newTape.totalPayables = tape[0].TTLPayables
newTape.totalReceivables = tape[0].TTLReceivables
newTape.commission = tape[0].Commission
newTape.receivables = receivables
newTape.payables = payables

return newTape