#!/bin/sh
surreal version
surreal start -A --deny-guests --log=${LOG} --auth --user=${USER} --pass=${PASS} --bind=0.0.0.0:${PORT} file://./database
