#!/bin/bash
#add passing test cases here
declare -a arr=(
        "simple_random_test"
        "fix_tx_port_short_packet_test"
        "multiport_sequential_random_test"
        "ml_random_test"
        )
#number of times to run each test case
if [[ $# -eq 0 ]]; then
    LIMIT=1
    PKTLEN=0 #default packet_length is random
    PKTDLY=0 #default packet_delay is random
    PKTVCS=0 #default packet_vc's is random
elif [[ $# -eq 1 ]]; then
    LIMIT=$1
    PKTLEN=0 #default packet_length is random
    PKTDLY=0 #default packet_deley is random
    PKTVCS=0 #default packet_vc's is random
elif [[ $# -eq 2 ]]; then
    LIMIT=$1
    PKTLEN=$2 #packet_length
    PKTDLY=0 #default packet_delay is random
    PKTVCS=0 #default packet_vc's is random
elif [[ $# -eq 3 ]]; then
    LIMIT=$1
    PKTLEN=$2 #packet_length
    PKTDLY=$3 #packet_delay
    PKTVCS=0 #default packet_vc's is random
else
    LIMIT=$1
    PKTLEN=$2 #packet_length
    PKTDLY=$3 #packet_delay
    PKTVCS=$4 #packet_vc's
fi

if [ ! -d logs ]; then
    mkdir logs
fi
source ../../synopsys_env_setup.bash
make clean
make comp PKTL=$PKTLEN PKTD=$PKTDLY PKTV=$PKTVCS
mv comp.log logs/
for i in "${arr[@]}"
do
    for ((j=1; j<= LIMIT; j++))
    do
	make runx TEST=$i ITER=$j
	mv "$i"_"$j".log logs/
	mv "$i"_"$j".fsdb logs/
    done
done
