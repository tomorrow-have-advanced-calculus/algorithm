#!/bin/bash
FUNC="file.crypto.js"
FILE="file"

hexdump -C file
node $FUNC encrypte 7 32399 $FILE $FILE
hexdump -C file
node $FUNC decrypte 27463 32399 $FILE $FILE
hexdump -C file