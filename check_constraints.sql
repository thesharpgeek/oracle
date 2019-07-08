col constraint_type "type" format a5
col owner heading "Owner: " format a25
col table_name heading "Table" format a25

select constraint_type, owner, table_name
from all_constraints
where owner not in
( 'DBSFWUSER',
  'MDSYS',
  'CTXSYS',
  'OLAPSYS',
--  'SYSTEM',
  'DVSYS',
  'AUDSYS',
  'DBSNMP',
  'GSMADMIN_INTERNAL',
  'ORDSYS',
  'OJVMSYS',
  'ORDDATA',
--  'XDB',
  'SYS',
  'LBACSYS',
  'WMSYS',
  'C##DBAAS_BACKUP'
  )
--GROUP BY constraint_type, owner, table_name
ORDER BY 2,3,1
/


