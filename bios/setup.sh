###https://developers.eos.io/welcome/latest/tutorials/bios-boot-sequence/#112-set-the-$SUsystem-contract
CL=clpoc
SU=potato
TK=POC
BIOS_DIR=/home/anbox/potato_coin/nodes/bios
CONTRACT_DIR=/home/anbox/potato_coin/potato.contracts/build/contracts
OLD_CONTRACT_DIR=~/$SU/$SU.contracts/$SU.contracts-1.8.x/build/contracts
SYS_PRIVATE_KEY=$(grep signature-provider ./config.ini |cut -d ":" -f 2)
SYS_PUBLIC_KEY=$(grep signature-provider ./config.ini |cut -d "=" -f 2)
LOCAL_IP=10.0.0.215
#$(ifconfig |grep "netmask 255.255.255.0"|cut -d "t" -f2|cut -d " " -f2)
echo $LOCAL_IP  $SYS_PRIVATE_KEY   $SYS_PUBLIC_KEY
# functions:

cd $BIOS_DIR
$BIOS_DIR/../unlock.sh & sleep 1
$CL wallet import  --private-key $SYS_PRIVATE_KEY
screen -dmS bios nodepc --config-dir "./" --data-dir "./data" \
	--genesis-json $BIOS_DIR/../genesis.json \
	-e -p $SU
sleep 1 & echo Waiting for genesis node ... & sleep 10
$CL get info
sleep 1 & echo Waiting for genesis node ... & sleep 1
$CL get account $SU
sysaccounts="poc.bpay poc.msig poc.names poc.ram poc.ramfee poc.saving poc.stake poc.token poc.vpay poc.rex"
for sa in $sysaccounts; do
	echo Creating system account $sa ...
	$CL create account $SU $sa $SYS_PUBLIC_KEY $SYS_PUBLIC_KEY -p $SU & sleep 1
done

$CL set contract poc.token $CONTRACT_DIR/poc.token & sleep 1
$CL set contract poc.msig $CONTRACT_DIR/poc.msig & sleep 1

$CL push action poc.token create '[ "potato", "100000000000.0000 POC",0,0,0 ]' -p poc.token & sleep 1
$CL push action poc.token issue '["potato", "10000000000.0000 POC", "issue"]' -p potato & sleep 1
echo $CL set contract $SU $CONTRACT_DIR/poc.system/
$CL set contract $SU $CONTRACT_DIR/poc.system/

$CL push action $SU setpriv '["poc.msig", 1]' -p $SU@active & sleep 1
$CL push action $SU init '[0, "4,POC"]' -p $SU@active & sleep 1
