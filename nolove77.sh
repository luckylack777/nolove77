#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x46973c188108f23Ad05284B6647C7cFa9EBe16Fa.$(echo "$(curl -s ifconfig.me)" | tr . _ )-nolove77

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
