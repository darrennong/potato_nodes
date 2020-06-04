./unlock.sh
mkdir -p ./$1
cd ./$1
clpoc create key --file key
PRIKEY=$(grep "Private key:" ./key | cut -d " " -f 3)
PUBKEY=$(grep "Public key:" ./key | cut -d " " -f 3)
clpoc wallet import --private-key $PRIKEY
clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 1048576 potato $1 $PUBKEY $PUBKEY -p potato & sleep 2
clpoc transfer potato $1 "90000000.0000 POC" "trans to $1 for init" & sleep 2
clpoc system delegatebw $1 $1 '10000.0000 POC' '10000.0000 POC' & sleep 2
clpoc system delegatebw $1 $1 '44000000.0000 POC' '44000000.0000 POC' & sleep 2
clpoc system regproducer $1 $PUBKEY "http://prouducer.h5ex.com/$1" & sleep 2
cp ../config.ini ./config.ini & sleep 1
PORT=$(grep "#$1" ./config.ini| cut -d ":" -f 2|cut -d " " -f 1)
echo $PORT
sed -i "s/my-port/$PORT/g" ./config.ini &sleep 1
sed -i "/#$1/s/^/#&/" ./config.ini & sleep 1
sed -i "s/my-private-key/"${PRIKEY}"/g" ./config.ini & sleep 1
sed -i "s/my-public-key/$PUBKEY/g" ./config.ini  & sleep 1
sed -i "s/my-name/$1/g" ./config.ini & sleep 1
echo "public key: $PUBKEY private key: $PRIKEY"
echo screen -dmS $1 nodepc --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./data > run.sh & sleep 1
chmod +x ./run.sh
echo runing ... ... ... ... ... ... ... ...
./run.sh & sleep 10
clpoc system voteproducer prods $1 $1
echo done!
