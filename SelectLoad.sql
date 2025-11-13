select loadnumbers as 'Load #'
from tblprojects
where projectnumber = {{projectInput.value}}
group by loadnumbers