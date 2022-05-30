threads=$(echo $(echo "$(grep -c ^processor /proc/cpuinfo)" | bc) | awk '{printf "%d",$1}')
./cpuminer-sse2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17017 -u _wallet_._worker_ -t $threads
