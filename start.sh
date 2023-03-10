#!/bin/sh
/bin/surreal start --log=${LOG} --user=${USER} --pass=${PASS} --bind=0.0.0.0:${PORT} memory
