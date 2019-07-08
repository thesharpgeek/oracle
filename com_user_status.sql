--com_user_status.sql
col username heading "Common user:" format a25
col account_status heading "Status:" format a16

SELECT 
  USERNAME,
  ACCOUNT_STATUS
FROM DBA_USERS
WHERE COMMON = 'YES'
ORDER BY 1
/