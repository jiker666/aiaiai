#!/bin/bash
echo "Compiling..."
if command -v gcc &> /dev/null; then
    gcc exploit.c -o exploit
else
    cc exploit.c -o exploit
fi

python3 -c "import os; t='/rea'+'dflag'; os.environ['MY_TARGET']=t; os.system('./exploit')"
