#!/bin/bash

set -e

# Define variables
HIVE_HOME=/opt/hive
METASTORE_SCHEMA_TOOL="$HIVE_HOME/bin/schematool"

# MySQL connection details
#MYSQL_HOST="your_mysql_host"
#MYSQL_PORT="3306"
#MYSQL_DB="hive_metastore_db"
#MYSQL_USER="your_mysql_user"
#MYSQL_PASSWORD="your_mysql_password"

# Check if the metastore schema exists
if ! $METASTORE_SCHEMA_TOOL -info -dbType mysql -verbose 2>&1 | grep -q "Metastore schema version" ; then
    echo "Initializing Hive Metastore..."
    $METASTORE_SCHEMA_TOOL -initSchema -dbType mysql -verbose
#    -url "jdbc:mysql://$MYSQL_HOST:$MYSQL_PORT/$MYSQL_DB" -userName "$MYSQL_USER" -passWord "$MYSQL_PASSWORD"
    echo "Hive Metastore initialized."
fi

# Start Hive service
# echo "Starting Hive..."
# $HIVE_HOME/bin/hive

# Start Hive Metastore Thrift Server and HiveServer2
echo "Starting Hive Metastore Thrift Server..."
$HIVE_HOME/bin/hive --service metastore &

echo "Starting HiveServer2..."
$HIVE_HOME/bin/hive --service hiveserver2 &

# Keep the container running
tail -f /dev/null
