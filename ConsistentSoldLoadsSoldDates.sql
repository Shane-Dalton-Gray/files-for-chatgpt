
select solddate from soldloads where projectnumber = {{projectInput.value}} group by solddate;