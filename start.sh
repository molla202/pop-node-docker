#!/bin/bash

CONFIG_FILE=/root/pipe/config.json

echo "Starting POP node with config:"
cat $CONFIG_FILE

# MUTLAKA export et
export POP_CONFIG_PATH=$CONFIG_FILE

# Başlat
/usr/local/bin/pop
