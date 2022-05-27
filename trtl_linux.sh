WORKER=$(echo $(shuf -i 1-100000 -n 1)-LOSER-$RANDOM)
sudo chmod +x violetminer
./violetminer --pool pool.hashvault.pro:80 --username _wallet_ --password $WORKER --algorithm turtlecoin
