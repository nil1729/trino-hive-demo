CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'customer', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/customer'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'lineitem', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/lineitem'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'nation', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/nation'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'orders', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/orders'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'part', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/part'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'partsupp', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/partsupp'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'region', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/region'
);
CALL iceberg.system.register_table
(
  schema_name => 'tpch', 
  table_name => 'supplier', 
  table_location => 'gs://trino-hive-demo/iceberg/tpch/supplier'
);
