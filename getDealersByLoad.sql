select
  SellingDlrNumber as SellingDealer,
  BuyingDlrNumber as BuyingDealer
from
  soldloads
where
  ProjectNumber = {{projectInput.value}}
  AND `Load #` = {{loadNumberSelect.value}}
limit
  1