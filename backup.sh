#!/bin/bash

date=$(date '+%Y%m%d')

# Login and unlock the vault
bw login --apikey
export BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)

# Export
bw export --format encrypted_json --password $BW_ENCRYPT_PASSWORD --raw > result/bw-export-$date.json

# Logout
bw logout