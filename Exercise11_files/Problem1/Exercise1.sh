###Align reference sequence files using muscle either format below is okay! Repeat alignment for all files.

#Sigma
/Users/lou/Desktop/muscle3.8.31_i86darwin64 -in sigma.ref -out sigma.align

#transporter reference
/Users/lou/Desktop/muscle3.8.31_i86darwin64 -in transporter.ref -out transporter.align

#sporecoat
/Users/lou/Desktop/muscle3.8.31_i86darwin64 -in sporecoat.ref -out sporecoat.align


###Build a profile HMM using alignment sequences and hmmbuild.

#Sigma
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sigma.hmm sigma.align

#transporter reference
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmbuild transporter.hmm transporter.align

#sporecoat
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sporecoat.hmm sporecoat.align


###Search each proteome for sigma factors using hmmsearch.

/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt $2 $1
cat Results.txt >> All_Results.txt
