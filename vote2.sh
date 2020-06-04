seqs="a b c d e f g h i j k l m n o p q r s t u v w x y z"
while true; do
	./unlock.sh
	for i in $seqs; do
		clpoc system voteproducer prods pcbp$i pcbpx pcbpy pcbpz
		sleep 1
	done
done
