--privs_for_roles.sql
-- roles granted to other roles: 
-- Information is provided only about roles to which the user has access.

col role heading "Role: " format a30
col privilege heading "Privilege: " format a50
col common heading "All containers: " format a17

select role, privilege, common from role_sys_privs order by 1
/

