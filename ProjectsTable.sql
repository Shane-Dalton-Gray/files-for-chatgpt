select ProjectNumber,DTNNumber as BuyingDealer,`Dealer Name`,LoadNumbers,UnitNumbers,Rep,LandedUnder,FreightUsed,FreightPad,Fee,`Agreement Type`,tblprojects.ID
from tblprojects inner join `gm dealers` on (DTNNumber = `gm dealers`.id)
where projectnumber = {{projectInput.value}}
order by loadnumbers,UnitNumbers
