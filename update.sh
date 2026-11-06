#!/usr/bin/env bash
# Baja la última versión del binario desde GitHub y la deja lista.
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
git fetch origin main
git reset --hard origin/main   # el repo público se reescribe en cada build
chmod +x bin/kuro
echo "Binario actualizado a la ultima version."
