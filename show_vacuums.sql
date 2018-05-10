\x 
select *, now() - query_start from pg_stat_activity where query LIKE 'VACUUM%' order by query_start ASC;
