#!/bin/bash

set -euo pipefail

FECHA=$(date +%Y%m%d-%H%M%S)

mkdir -p resultado/backups
mkdir -p resultado/reportes

crear_backup() {
    echo "Creando backup..."
    tar -czf resultado/backups/backup-$FECHA.tar.gz README.md
}

reporte_cpu() {
    lscpu > resultado/reportes/cpu-$FECHA.txt
}

reporte_disco() {
    df -h > resultado/reportes/disco-$FECHA.txt
}

crear_backup
reporte_cpu
reporte_disco

echo "Mantenimiento terminado correctamente"
