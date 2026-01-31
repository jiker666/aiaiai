#!/bin/bash
echo "Running setup.sh exploit..."
if command -v gcc &> /dev/null; then
    gcc exploit.c -o exploit
    ./exploit
elif command -v cc &> /dev/null; then
    cc exploit.c -o exploit
    ./exploit
else
    echo "No compiler found in setup.sh."
fi
