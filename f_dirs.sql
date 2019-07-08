-- f_dirs.sql
col owner heading "Owner" format a25
col directory_name heading "Directory: " format a35
col directory_path heading "Path" format a60

-- find default data pump directory path 
SELECT
  OWNER,
  DIRECTORY_NAME,
  DIRECTORY_PATH
FROM 
  ALL_DIRECTORIES
WHERE
  DIRECTORY_NAME = 'DATA_PUMP_DIR'
/

-- find all directories and owners
SELECT
  OWNER,
  DIRECTORY_NAME,
  DIRECTORY_PATH
FROM ALL_DIRECTORIES
/

