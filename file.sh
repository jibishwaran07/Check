#!/bin/bash

TARGET_DIR="/home/administrator/myfolder"
TARGET_FILE="$TARGET_DIR/myfile.txt"

mkdir -p "$TARGET_DIR"
touch "$TARGET_FILE"

chmod 755 "$TARGET_DIR"
chmod 644 "$TARGET_FILE"

chown administrator:administrator "$TARGET_DIR" "$TARGET_FILE"

echo "Jenkins job completed!"
