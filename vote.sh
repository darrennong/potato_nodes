seqs="a b c d e f g h i j k l m n o p q r s t u v w x y z"
cd ~/potato_coin/nodes
while true; do
	./unlock.sh
	for i in $seqs; do
		j=$[RANDOM%26+1]
		k=$[RANDOM%26+1]
		c=$(echo $seqs |cut -d ' ' -f $j)
		c1=$(echo $seqs |cut -d ' ' -f $k)
		clpoc system voteproducer prods pcbp$i pcbp${c} pcbp${c1}
		clpoc transfer pcbp$c pcbp$i "0.1000 POC" "autotest"
		clpoc transfer pcbp${c1} pcbp$i "0.1500 POC" "autotest"
		clpoc system buyram pcbp$i pcbp${c1} "100.0000 POC"
		sleep 10
		clpoc system sellram pcbp${c1} "50.0000 POC"
	done
	sleep 20
done
