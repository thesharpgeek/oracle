-- Oracle 12.2
-- Find non default users, is common or not, account status, and default tbpsace:

-- find only common users:
-- select username from dba_users where common='YES';

-- find only local users: 
-- select username from dba_users where common='NO';

select count(username) 
FROM dba_users
WHERE username NOT IN
	('MIGRATE',
	'SYS',
	'SYSTEM',
	'SYSDBA',
	'SYSMAN',
	'APEX_PUBLIC_USER',
	'APEX_030200',
	'AUDIT_READER',
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
	'C##CLOUD$SERVICE',
	'FGL_AGENT')
/

SELECT 
  --common,
  username,
  account_status,
  default_tablespace
FROM dba_users
WHERE username NOT IN
	('MIGRATE',
	'SYS',
	'SYSTEM',
	'SYSDBA',
	'SYSMAN',
	'APEX_PUBLIC_USER',
	'APEX_030200',
	'AUDIT_READER',
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
	'C##CLOUD$SERVICE',
	'FGL_AGENT')
ORDER BY 1
/