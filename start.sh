#!/bin/bash

export POP_CONFIG_PATH=/root/pipe/config.json

echo "Starting POP node with config:"
cat $POP_CONFIG_PATH

/usr/local/bin/pop
