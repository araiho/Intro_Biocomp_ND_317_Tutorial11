# Write a shell script that creates alignments and profile HMMs for each
# reference set of sequences, searches for each protein type in each 
# bacterial proteome

# USAGE = bash Problem1.sh 

######### aligning and using hmmbuild
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/muscle/muscle3.8.31_i86darwin64 -in sigma.ref -out sigma.align
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sigma.hmm sigma.align

/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/muscle/muscle3.8.31_i86darwin64 -in sporecoat.ref -out sporecoat.align
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sporecoat.hmm sporecoat.align

/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/muscle/muscle3.8.31_i86darwin64 -in transporter.ref -out transporter.align
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmbuild transporter.hmm transporter.align

######### hmmsearch for all *.fasta files
for data in *.fasta
do
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout $data-sigma.hits sigma.hmm $data
done

for data in *.fasta
do
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout $data-sporecoat.hits sporecoat.hmm $data
done

for data in *.fasta
do
/Users/chelseaweibel/Desktop/Biocomputing/Biocomputing_Tools/hmmer/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout $data-transporter.hits transporter.hmm $data
done

######### creating output table

for data in *.hits
do
cat $data | grep -v "#" | awk '{print $1,$3,$5}' | sed -E 's/tr\|[A-Z0-9]+\|[A-Z0-9]+_9//g' >> hmmOut.txt
done
