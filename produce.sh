seqs="a b c d e f g h i j k l m n o p q r s t u v w x y z"
./unlock.sh
./bios/run.sh
for i in $seqs; do
	        cd ./pcbp$i;
		screen -dmS pcbp$i nodepc --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./data --hard-replay-blockchain;
	echo pcbp$i &&	sleep 10;
		cd ..;
	done
					
