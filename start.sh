#!/bin/bash

CONFIG_FILE=/root/pipe/config.json
POP_BIN=/root/pipe/pop

echo "Starting POP node with config:"
cat $CONFIG_FILE

export POP_CONFIG_PATH=$CONFIG_FILE

# Validasyon ve başlatma
$POP_BIN
$POP_BIN
