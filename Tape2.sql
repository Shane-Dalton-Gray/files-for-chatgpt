select ProjectNumber,`Dealer Name`,City,St,Account,Amount,Solddate,DTNNumber,ID,concat('$',format(TTLReceivables,2)) as TTLReceivables, 
concat('$',format((case when TTLPayables is null then 0 else TTLPayables end),2)) as TTLPayables,
concat('$',format((case when TTLPayables is null then TTLReceivables else TTLReceivables-TTLPayables end),2)) as TTLProfit,
concat('$',format((case when TTLPayables is null then TTLReceivables*.285 else Commission end),2)) as Commission,InvoiceNumber from
(SELECT tblprojectpayables.ProjectNumber, `gm dealers`.`Dealer Name`, `gm dealers`.City, `gm dealers`.St, tblprojectpayables.Account,InvoiceNumber, 
concat('$',format(tblprojectpayables.Amount,2)) as Amount,date_format(tblprojectpayables.solddate, '%m/%d/20%y') as Solddate,tblprojectpayables.DTNNumber, 
tblprojectpayables.ID,(select sum(amount) from tblprojectpayables where account = "Receivable" and tblprojectpayables.ProjectNumber = {{projectInput.value}}) as TTLReceivables,
(select sum(amount) from tblprojectpayables where account = "Payable" and tblprojectpayables.ProjectNumber = {{projectInput.value}}) as TTLPayables,
((select sum(amount) from tblprojectpayables where account = "Receivable" and tblprojectpayables.ProjectNumber = {{projectInput.value}}) - 
(select sum(amount) from tblprojectpayables where account = "Payable" and tblprojectpayables.ProjectNumber = {{projectInput.value}})) as TTLProfit,
((select sum(amount) from tblprojectpayables where account = "Receivable" and tblprojectpayables.ProjectNumber = {{projectInput.value}}) - 
(select sum(amount) from tblprojectpayables where account = "Payable" and tblprojectpayables.ProjectNumber = {{projectInput.value}}))*.285 as Commission
FROM tblprojectpayables INNER JOIN `gm dealers` on tblprojectpayables.DTNNumber = `gm dealers`.ID
where (((tblprojectpayables.ProjectNumber)={{projectInput.value}}))
GROUP BY tblprojectpayables.ProjectNumber, `gm dealers`.`Dealer Name`, `gm dealers`.City, `gm dealers`.St, tblprojectpayables.Account, tblprojectpayables.Amount, 
tblprojectpayables.SoldDate,tblprojectpayables.DTNNumber,tblprojectpayables.ID)sub
