## From source database: 
## 
## Trace control file
##
## Copy control file 
## 
## Copy spfile
## 
## Database invalid object count
## 
## Database non-Oracle user count
#### Database user privileges list
##
## Tablespaces list
## Tables & Schemas list 
## 
## Database object type breakdown 
#### Count for each object type
#### Owner for each object
## 
archive log list;
#if not in archive log mode:
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;
archive log list;

# force logging
select name, force_logging from v$database;
alter database force logging;

alter system set standby_file_management = 'AUTO';


