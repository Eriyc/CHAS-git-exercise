#!/usr/bin/env bash

set -euo pipefail

KATALOG="/var/systementor/konsultdata"
FIL="$KATALOG/anteckningar.txt"
GRUPP="konsulter"
WINDOWS_IP="192.168.1.51"

mkdir -p "$KATALOG"
touch "$FIL"

getent group "$GRUPP" >/dev/null || groupadd "$GRUPP"

chown root:"$GRUPP" "$KATALOG" "$FIL"
chmod 750 "$KATALOG"
chmod 640 "$FIL"

ls -la "$KATALOG"
ls -ld "$KATALOG"

ping -c 4 "$WINDOWS_IP"
ip addr show
