SELECT relname, age(relfrozenxid) as xid_age,
    pg_size_pretty(pg_table_size(oid)) as table_size
FROM pg_class
WHERE relkind = 'r'
ORDER BY age(relfrozenxid) DESC;
