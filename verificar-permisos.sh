#!/bin/bash

if [ -x scripts/sistema.sh ]; then
    echo "OK: scripts/sistema.sh tiene permisos de ejecución"
else
    echo "ERROR: scripts/sistema.sh no tiene permisos de ejecución"
    exit 1
fi
