select username as "Non oracle user" from dba_users where username not in (select user_name from sys.default_pwd$);
