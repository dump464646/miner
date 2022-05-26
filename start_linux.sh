tar -xf hellminer_cpu_linux.tar.gz
threads=$(echo $(echo "$(grep -c ^processor /proc/cpuinfo)" | bc) | awk '{printf "%d",$1}')
sudo chmod +x hellminer
./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u RGvKsTkhKKzBF8qumhPkXBA5xCax3Q8mqE.FUCKING_LOSER -p x --cpu $threads
