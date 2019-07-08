SELECT 
	owner, 
	table_name, 
	privilege 
FROM dba_tab_privs 
WHERE owner not in 
	('SYS',
	'SYSTEM',
	'LBACSYS', 
	'OUTLN',
	'DVSYS',
	'MDSYS',
	'DVF',
	'OLAPSYS',
	'ORDDATA',
	'ORDSYS',
	'XDB',
	'CTXSYS',
	'CTX_OUTPUT',
	'WMSYS',
	'GSMADMIN_INTERNAL',
	'APPQOSSYS',
	'DBSNMP',
	'ORDPLUGINS')
/

SELECT 
	owner, 
	table_name, 
	privilege 
FROM dba_tab_privs 
WHERE owner not in 
	('SYS',
	'SYSTEM',
    'SYSMAN',
	'LBACSYS', 
	'OUTLN',
	'DVSYS',
	'MDSYS',
	'DVF',
	'OLAPSYS',
	'ORDDATA',
	'ORDSYS',
	'XDB',
	'CTXSYS',
	'CTX_OUTPUT',
	'WMSYS',
	'GSMADMIN_INTERNAL',
	'APPQOSSYS',
	'DBSNMP',
	'ORDPLUGINS',
    -- backup users in RRTP
    'R2PP02_BKP',
    -- known app users in RRTP
    'RAVENRPT',
    'RAVENSTG',
    'RAVENWDM',
    'RAVENRPT_RO')
/

SELECT PRIVILEGE,
    TABLE_NAME,
    GRANTABLE, 
    HIERARCHY
FROM USER_TAB_PRIVS
WHERE OWNER = 'SVC_ENGKPI'
/