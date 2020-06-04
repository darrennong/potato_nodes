seqs="a b c d e f g h i j k l m n o p q r s t u v w x y z"
echo Press Ctrl+C to stop nodes ...
echo Enter for continue...
read -p "请问是否删除文件（Y/N）?" DEL
screen -r bios
if [ $DEL == "y" ] ;then
	rm -r bios/data;
	rm ~/potato-wallet/default.wallet & sleep1;
	WK=$(clpoc wallet create --to-console |grep '"'|cut -d '"' -f 2)
	echo clpoc wallet unlock --password $WK > ./unlock.sh;
	chmod +x ./unlock.sh;
fi
for i in $seqs; do
  screen -r pcbp$i
if [ $DEL == "y" ] ;then
  rm -r pcbp$i;
fi
done
