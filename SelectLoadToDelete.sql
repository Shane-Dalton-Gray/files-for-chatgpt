select `load #` as LoadNumber from soldloads where projectnumber = {{projectInput.value}}
group by `load #`