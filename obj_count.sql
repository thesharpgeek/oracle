/*** 
SELECT 
  OWNER, 
  OBJECT_NAME, 
  LAST_DDL_TIME
FROM DBA_OBJECTS
WHERE STATUS = 'INVALID'
/
***/ 

SELECT COUNT(DISTINCT OBJECT_NAME) AS "Total objects" 
FROM DBA_OBJECTS
WHERE OWNER NOT IN
    ('SYS',
    'SYSTEM',
	'SYSDBA',
	'SYSMAN',
	'APEX_PUBLIC_USER',
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
	'XS$NULL',
	'OJVMSYS',
	'SYS$UMF',
	'DBSFWUSER',
	'GGSYS',
	'SI_INFORMTN_SCHEMA',
	'GSMCATUSER',
	'MDDATA',
	'SYSBACKUP',
	'REMOTE_SCHEDULER_AGENT',
	'GSMUSER',
	'SYSRAC',
	'AUDSYS',
	'DIP',
	'SYSKM',
	'ORACLE_OCM',
	'SYSDG',
	'SPATIAL_CSW_ADMIN_USR',
	'C##DBAAS_BACKUP',
	'ANONYMOUS',
	'EXFSYS',
	'FLOWS_FILES',
	'TSMSYS',
	'MGMT_VIEW',
	'APEX_030200'
  )
/

SELECT COUNT(DISTINCT OBJECT_NAME) AS "Number of valid objects" 
FROM DBA_OBJECTS 
WHERE 
  OWNER NOT IN
    ('SYS',
    'SYSTEM',
	'SYSDBA',
	'SYSMAN',
	'APEX_PUBLIC_USER',
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
	'XS$NULL',
	'OJVMSYS',
	'SYS$UMF',
	'DBSFWUSER',
	'GGSYS',
	'SI_INFORMTN_SCHEMA',
	'GSMCATUSER',
	'MDDATA',
	'SYSBACKUP',
	'REMOTE_SCHEDULER_AGENT',
	'GSMUSER',
	'SYSRAC',
	'AUDSYS',
	'DIP',
	'SYSKM',
	'ORACLE_OCM',
	'SYSDG',
	'SPATIAL_CSW_ADMIN_USR',
	'C##DBAAS_BACKUP',
	'ANONYMOUS',
	'EXFSYS',
	'FLOWS_FILES',
	'TSMSYS',
	'MGMT_VIEW',
	'APEX_030200'
  )
AND 
  STATUS = 'VALID'
/

SELECT COUNT(DISTINCT OBJECT_NAME) AS "Number of invalid objs: " 
FROM DBA_OBJECTS 
WHERE 
  OWNER NOT IN
    ('SYS',
    'SYSTEM',
	'SYSDBA',
	'SYSMAN',
	'APEX_PUBLIC_USER',
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
	'XS$NULL',
	'OJVMSYS',
	'SYS$UMF',
	'DBSFWUSER',
	'GGSYS',
	'SI_INFORMTN_SCHEMA',
	'GSMCATUSER',
	'MDDATA',
	'SYSBACKUP',
	'REMOTE_SCHEDULER_AGENT',
	'GSMUSER',
	'SYSRAC',
	'AUDSYS',
	'DIP',
	'SYSKM',
	'ORACLE_OCM',
	'SYSDG',
	'SPATIAL_CSW_ADMIN_USR',
	'C##DBAAS_BACKUP',
	'ANONYMOUS',
	'EXFSYS',
	'FLOWS_FILES',
	'TSMSYS',
	'MGMT_VIEW',
	'APEX_030200'
  )
AND 
  STATUS = 'INVALID'
/