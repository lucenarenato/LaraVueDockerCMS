#!/usr/bin/env bash

mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS laravue;
    GRANT ALL PRIVILEGES ON \`laravue%\`.* TO '$MYSQL_USER'@'%';
EOSQL
