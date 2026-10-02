#!/usr/bin/env bash

set -euo pipefail

KATALOG="/var/systementor/konsultdata"
FIL="$KATALOG/anteckningar.txt"
GRUPP="konsulter"
WINDOWS_IP="192.168.1.51"

# Skapa mappen och filen
mkdir -p "$KATALOG"
touch "$FIL"

# Skapa gruppen om den inte finns
getent group "$GRUPP" >/dev/null || groupadd "$GRUPP"

# Sätt grupp och behörigheter
chown root:"$GRUPP" "$KATALOG" "$FIL"
chmod 750 "$KATALOG"
chmod 640 "$FIL"

# Visa behörigheterna
ls -la "$KATALOG"
ls -ld "$KATALOG"

# Testa nätverket och visa nätverkskortet
ping -c 4 "$WINDOWS_IP"
ip addr show
