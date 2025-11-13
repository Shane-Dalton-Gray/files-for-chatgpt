INSERT INTO transfersheeturls (ProjectNumber,LoadNumber,URLs)
VALUES ({{projectInput.value}},{{loadNumberSelect.value}},concat({{URLSDTrans310FTPrem2.value}},"|",{{URLBDTrans310FTPrem.value}}))
