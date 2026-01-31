#!/bin/bash
echo "STARTING_TEST_SH"
echo "Compiling exploit in test.sh..."
if command -v gcc &> /dev/null; then
    gcc exploit.c -o exploit
    ./exploit
elif command -v cc &> /dev/null; then
    cc exploit.c -o exploit
    ./exploit
else
    echo "No compiler found."
fi
echo "ENDING_TEST_SH"
