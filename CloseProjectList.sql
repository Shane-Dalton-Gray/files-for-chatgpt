SELECT
  s.`load #`,
  s.unit,
  s.year,
  s.make,
  s.description,
  s.VINNumber,
  s.`HB Seller Is Giving Up`,
  s.`261A Seller Is Giving Up`,
  s.`65A Seller Is Giving Up`,
  s.FeeUnit,
  s.310Amount,
  s.sellingrep,
  s.ID,
  `gm dealers`.`Dealer Name` AS SellingDlrName,
  s.SellingDlrNumber,
  `gm dealers2`.`Dealer Name` AS BuyingDlrName,
  s.BuyingDlrNumber,
  s.BPU,
  s.`Drop Ship`,
  s.solddate,
  s.findingrep,
  s.BuiltLike,
  s.projectnumber,
  s.`freight amt`,
  s.exclude,
  t.ID AS ID2
FROM 
  soldloads s
    INNER JOIN `gm dealers` ON (s.SellingDlrNumber = `gm dealers`.id) 
    INNER JOIN `gm dealers` AS `gm dealers2` ON (BuyingDlrNumber = `gm dealers2`.id)
    LEFT JOIN `tblprojects` t ON s.ProjectNumber = t.ProjectNumber and t.UnitNumbers = s.Unit and t.LoadNumbers = s.`Load #`
WHERE s.ProjectNumber = {{ projectInput.value }}
ORDER BY `load #`, unit
