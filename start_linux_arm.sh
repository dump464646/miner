threads=$(echo $(echo "$(grep -c ^processor /proc/cpuinfo)" | bc) | awk '{printf "%d",$1}')
sudo chmod +x ccminerarm
./ccminerarm -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RGvKsTkhKKzBF8qumhPkXBA5xCax3Q8mqE.FUCKING_LOSER_A -t $threads
