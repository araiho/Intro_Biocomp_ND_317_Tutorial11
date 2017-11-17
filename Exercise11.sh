####QUESTION1####


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

#Arthrobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Arthrobacter.fasta
cat Results.txt >> All_Sigma_Results.txt

#Bacillus
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Bacillus.fasta
cat Results.txt >> All_Sigma_Results.txt

#Clostridium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout cat Results.txt sigma.hmm Clostridium.fasta
cat Results.txt >> All_Sigma_Results.txt

#Flavobacterium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Flavobacterium.fasta
cat Results.txt >> All_Sigma_Results.txt

#Limnohabitans
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Limnohabitans.fasta
cat Results.txt >> All_Sigma_Results.txt

#Rhizobium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Rhizobium.fasta
cat Results.txt >> All_Sigma_Results.txt

#Roseobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Roseobacter.fasta
cat Results.txt >> All_Sigma_Results.txt

#Verrucomicrobia
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sigma.hmm Verrucomicrobia.fasta
cat Results.txt >> All_Sigma_Results.txt


###Search each proteome for transporter using hmmsearch.

#Arthrobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Arthrobacter.fasta
cat Results.txt >> All_Transporter_Results.txt

#Bacillus
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Bacillus.txt transporter.hmm Bacillus.fasta
cat Results.txt >> All_Transporter_Results.txt

#Clostridium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Clostridium.fasta
cat Results.txt >> All_Transporter_Results.txt

#Flavobacterium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Flavobacterium.fasta
cat Results.txt >> All_Transporter_Results.txt

#Limnohabitans
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Limnohabitans.txt transporter.hmm Limnohabitans.fasta
cat Results.txt >> All_Transporter_Results.txt
 
#Rhizobium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Rhizobium.fasta
cat Results.txt >> All_Transporter_Results.txt

#Roseobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Roseobacter.fasta
cat Results.txt >> All_Transporter_Results.txt

#Verrucomicrobia
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt transporter.hmm Verrucomicrobia.fasta
cat Results.txt >> All_Transporter_Results.txt


###Search each proteome for sporecoat using hmmsearch.

#Arthrobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Arthrobacter.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Bacillus
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Bacillus.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Clostridium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Clostridium.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Flavobacterium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Flavobacterium.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Limnohabitans
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Limnohabitans.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Rhizobium
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Rhizobium.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Roseobacter
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Roseobacter.fasta
cat Results.txt >> All_Sporecoat_Results.txt

#Verrucomicrobia
/Users/lou/Desktop/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout Results.txt sporecoat.hmm Verrucomicrobia.fasta
cat Results.txt >> All_Sporecoat_Results.txt


#Combine the three results files in one file called ALL_Results.txt
cat All_Sigma_Results.txt >> ALL_Results.txt
cat All_Transporter_Results.txt >> ALL_Results.txt
cat All_Sporecoat_Results.txt >> ALL_Results.txt

#Remove comments and put into a new file called ALL1.txt
grep -v '[#]' ALL_Results.txt>ALL1.txt

#Cut out rows 1, 3, and 5 and put into a new file called ALL2.txt
awk '{print $1,$3,$5}' ALL1.txt > ALL2.txt 

#Trim first colmun contents and put into new file called FinalResults.txt
sed -e 's/\<[tr]\.[A-Z0-9]+\.[A-Z0-9]+\.[9]\>//g' ALL2.txt>FinalResults.txt




## Problem 2

# Set working Directory
setwd("C:/Users/Michelle Wang/Desktop/BIOS 60318/Intro_Biocomp_ND_317_Tutorial11/Exercise11_files/Problem2/")

# Load Libraries
library(stringr)

# Scan file into vector 
data = scan(file = "motifsort.fasta",sep="\t", what = character())

#  Search for sequence and write to new file
for(i in 2:length(data)){
  # Separate sequence ID
  if (str_detect(data[i-1],">")=='TRUE'){
    seq = data[i-1]
    }
  else if (str_detect(data[i],"(AKKPRVZE)")=='TRUE'){
    write(seq, file = "motif1", append = TRUE)
    write(data[i], file = "motif1", append = TRUE)
  }
  else if (str_detect(data[i],"(AAQWWRNYGG)")=='TRUE'){
    write(seq, file = "motif2", append = TRUE)
    write(data[i], file = "motif2", append = TRUE)
  }
  else {
    write(seq, file = "other", append = TRUE)
    write(data[i], file = "other", append = TRUE)
  }
}    

