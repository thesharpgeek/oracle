--current_user_roles.sql
col granted_role format a30

SELECT granted_role, admin_option, default_role, os_granted, common
FROM user_role_privs
ORDER BY 2
/
