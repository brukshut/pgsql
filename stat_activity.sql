SELECT pid, application_name, client_addr, backend_start, state, 
  now() AS now, 
  now() - query_start AS time_since_query_start, 
  state_change - query_start AS query_run_time

FROM pg_stat_activity WHERE state != 'idle' ORDER BY time_since_query_start DESC LIMIT 10;
