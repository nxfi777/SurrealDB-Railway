#!/bin/sh
surreal start -A --log=${DB_LOG} --user=${DB_USER} --pass=${DB_PASS} --bind=0.0.0.0:${DB_PORT} file://./database
surreal version

echo "DB_LOG: ${DB_LOG}"
echo "DB_USER: ${DB_USER}"
echo "DB_PASS: ${DB_PASS}"
echo "DB_PORT: ${DB_PORT}"
