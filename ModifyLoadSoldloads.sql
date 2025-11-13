SELECT * FROM soldloads
where `load #` = {{soldLoadDetailsTable.selectedRow.data['load #']}} and ID = {{ soldLoadDetailsTable.selectedRow.data.ID }}