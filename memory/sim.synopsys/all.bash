#!/bin/bash
#add passing test cases here
declare -a arr=(
	"simple_random_test"
	"fix_tx_port_short_packet_test"
	"multiport_sequential_random_test"
	"ml_random_test"
        )
PKTLEN=0 #default packet_length is random
PKTDLY=0 #default packet_delay is random
PKTVCS=0 #default packet_vc's is random
if [ ! -d logs ]; then
    mkdir logs
fi
source ../../synopsys_env_setup.bash
make clean
make comp PKTL=$PKTLEN PKTD=$PKTDLY PKTV=$PKTVCS
mv comp.log logs/
for i in "${arr[@]}"
do
    make run TEST=$i
    mv "$i".log logs/
    mv "$i".fsdb logs/
done
