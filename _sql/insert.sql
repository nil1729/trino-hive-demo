CREATE SCHEMA iceberg.tpch_sf1 
WITH (location= 'gs://trino-hive-demo/iceberg/tpch/sf1');

use iceberg.tpch_sf1;

CREATE TABLE iceberg.tpch_sf1.customer
WITH (
    format = 'PARQUET',
    partitioning = ARRAY['nationkey', 'mktsegment', 'bucket(custkey, 10)'],
    sorted_by = ARRAY['custkey']
)
AS 
SELECT * FROM tpch.sf1.customer;
