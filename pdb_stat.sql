--check pdb status
--
select inst_id, con_id, name, open_mode from gv$pdbs order by 1;