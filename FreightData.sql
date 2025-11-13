select FreightAmount, (select IF (BPU = 1,"Buyer Pick Up","Logistics Land Cartage")) as FreightMethod
from savedprojectloadinfo
where LoadNumber = {{loadNumberSelect.value}} and ProjectNumber = {{projectInput.value}}