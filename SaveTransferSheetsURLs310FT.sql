INSERT INTO transfersheeturls (ProjectNumber,LoadNumber,URLs)
VALUES ({{projectInput.value}},{{loadNumberSelect.value}},concat({{URLSDTrans310FT2.value}},"|",{{URLBDTrans310FT.value}}))
