cd /home/anbox/potato_coin/nodes/bios
screen -dmS bios nodepc --config-dir "./" --data-dir "./data" \
	--genesis-json ../genesis.json \
	-e -p potato
