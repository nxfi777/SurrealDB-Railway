#!/bin/sh
surreal version
surreal start -A --log=${DB_LOG} --auth --user=${DB_USER} --pass=${DB_PASS} --bind=0.0.0.0:${DB_PORT} file://./database
