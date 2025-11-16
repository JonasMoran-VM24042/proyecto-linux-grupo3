#!/bin/bash
echo "===== REPORTE DEL SISTEMA ===="
echo "Fecha y hora: $(date)"
echo "Host: $(hostname)"
echo "Usuarios conectados: $(who | wc -l)"
echo "Espacio libre en disco (/) $(df -h / | awk 'NR==2{print $4}')"
echo "Memoria RAM libre: $(free -h | awk '/Mem:/ {print $4}')"
echo "Contenedores Docker activos: $(docker ps -q 2>/dev/null | wc -l)"
