for seq in *.ref; do
name=$(echo "$seq" | cut -d '.' -f 1)
# output sequence alignment per .ref file
./muscle -in $seq -out $name.msa
./hmmbuild $name.hmm $name.msa
rm $name.msa
done

for file in *.fasta; do
n1="$(echo $file | cut -d "." -f 1)"
for model in *.hmm; do
n2="$(echo $model | cut -d "." -f 1)"
./hmmsearch --tblout $n1-$n2.tbl $model $file
done
done

rm *.hmm

cat *.tbl | grep -v "#" | awk '{print $1 = substr($1, length($1)-3, length($1)), $3, $5}' > hmmOut.txt
