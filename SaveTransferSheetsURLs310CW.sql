INSERT INTO transfersheeturls (ProjectNumber,LoadNumber,URLs)
VALUES ({{projectInput.value}},{{loadNumberSelect.value}},concat({{URLSDTrans310CW2.value}},"|",{{URLBDTrans310CW2.value}}))
