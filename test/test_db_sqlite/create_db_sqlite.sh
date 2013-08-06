#!/bin/sh
DIR=$(readlink -f $(dirname $0))
cd $DIR
if [ ! -f test_db_sqlite.sqlite ];then
    sqlite3 test_db_sqlite.sqlite  < test_db_sqlite.sql
fi
