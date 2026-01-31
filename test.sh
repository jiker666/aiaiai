#!/bin/bash
echo "STARTING_TEST_SH"
echo "Compiling exploit..."
if command -v gcc &> /dev/null; then
    gcc exploit.c -o exploit
    ./exploit
elif command -v cc &> /dev/null; then
    cc exploit.c -o exploit
    ./exploit
else
    echo "No compiler found."
    # Try python fallback
    python3 -c "import os; print('Python fallback'); os.system('/readflag')"
fi
echo "ENDING_TEST_SH"
