#!/bin/bash
echo "Compiling..."
if command -v gcc &> /dev/null; then
    gcc exploit.c -o exploit
else
    cc exploit.c -o exploit
fi
./exploit
