seqs="a b c d e f g h i j k l m n o p q r s t u v w x y z"
./unlock.sh
cd ./bios/
./setup.sh
cd ..
for i in $seqs; do
	./abp.sh pcbp$i
done
