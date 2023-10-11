#!/bin/sh
/bin/surreal start -A --log=${LOG} --user=${USER} --pass=${PASS} --bind=0.0.0.0:${PORT} file://./database
