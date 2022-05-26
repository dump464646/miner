threads=$(echo $(echo "$(grep -c ^processor /proc/cpuinfo)" | bc) | awk '{printf "%d",$1}')
sudo chmod +x ccminerarm
./ccminerarm -a verus -o stratum+tcp://eu.luckpool.net:3956 -u _wallet_._worker_ -t $threads
