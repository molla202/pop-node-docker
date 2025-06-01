#!/bin/bash

CONFIG_FILE=/root/pipe/config.json
POP_BINARY=/root/pipe/pop

echo "Starting POP node with config:"
cat $CONFIG_FILE

chmod +x $POP_BINARY

export POP_CONFIG_PATH=$CONFIG_FILE

$POP_BINARY
