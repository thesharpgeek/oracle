-- db_cache_size advisor
SELECT
   size_for_estimate size_est,
   buffers_for_estimate buf_est,
   estd_physical_read_factor est_rf,
   estd_physical_reads est_pr
 FROM V$DB_CACHE_ADVICE
 WHERE name = 'DEFAULT'
   AND block_size = (SELECT value FROM V$PARAMETER
                     WHERE name = 'db_block_size')
   AND advice_status = 'ON';