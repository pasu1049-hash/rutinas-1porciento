#!/usr/bin/env bash
# Sube las rutinas a GitHub Pages. Uso: bash rutinas-web/subir.sh "qué cambió"
set -e
cd "$(dirname "$0")"
git add -A
git diff --cached --quiet || git commit -q -m "${1:-Actualizar rutinas}"
git push -u origin main
echo "Listo: https://pasu1049-hash.github.io/rutinas-1porciento/"
