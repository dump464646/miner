tar -xf hellminer_cpu_linux.tar.gz
threads=$(echo $(echo "$(grep -c ^processor /proc/cpuinfo)" | bc) | awk '{printf "%d",$1}')
sudo chmod +x hellminer
./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u _wallet_._worker_ -p x --cpu $threads
