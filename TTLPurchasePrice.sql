select
  case
    when {{paymentTypeSelect.value}} = "Check Writer" then round(sum(310Amount) - sum(landedunder), 2)
    else round(sum(310amount), 2)
  end as TTLPurchasePrice
from
  soldloads
  inner join (
    select
      landedunder,
      loadnumbers,
      ProjectNumber,
      UnitNumbers
    from
      tblprojects
  ) tblprojects on tblprojects.LoadNumbers = soldloads.`Load #`
  and tblprojects.ProjectNumber = soldloads.ProjectNumber
  and tblprojects.UnitNumbers = soldloads.Unit
where
  soldloads.`Load #` = {{loadNumberSelect.value}}
  and soldloads.ProjectNumber = {{projectInput.value}}