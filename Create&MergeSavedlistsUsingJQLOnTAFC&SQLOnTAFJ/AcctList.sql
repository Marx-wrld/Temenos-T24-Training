SELECT TOP 10 [CO_CODE], [RECID] FROM V_FBNK_ACCOUNT WHERE WORKING_BALANCE > '0' AND CUSTOMER <> ''
UNION
SELECT TOP 10 [CO_CODE], [RECID] FROM V_FEUI_ACCOUNT WHERE WORKING BALANCE > '0' AND CUSTOMER <> ''
UNION
SELECT TOP 10 [CO_CODE], [RECID] FROM V_FSG1_ACCOUNT WHERE WORKING_BALANCE > '0' AND CUSTOMER <> ''
ORDER BY [CO_CODE];