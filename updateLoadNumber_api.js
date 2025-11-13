let IDArr = [];
soldLoadDetailsTable.selectedRow.data.forEach(record => IDArr.push("'" + record.ID + "'"));

let query = "UPDATE soldloads SET `261A seller is giving up` = " + soldLoadDetailsTable.recordUpdates['0']['261A Seller Is Giving Up'] + " WHERE ID IN " + "(" + IDArr + ")" + ";";

return query;