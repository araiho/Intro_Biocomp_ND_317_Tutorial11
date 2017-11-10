############QUESTION 1 ######################
#   
# align each of the reference files with muscle
./muscle -in 
# make HMM profiles from each alignment with hmmbuild
./hmm

# loop over all *.fasta
# run hmmsearch with the --tblout option and use the index variable to specify a unique output file
# do the hmmsearch step 3 times, one per HMM profile
# 
# cat all of the hmmsearch output files
# remove the comment lines (grep -v "#")
# use cut or awk to get the columns you want (1st, 3rd, 5th)
# trim the 1st column contents to just the last bit that is a "species" code
# 
# 
#############QUESTION 2 ################
# load the fasta file into a vector using scan() in R
fasta=scan(file="Exercise11_files/Problem2/motifsort.fasta", what=character())

# create three output files to be written to (motif1, motif2, other)
 writeLines()

# loop through the input file line by line
for(i in 1:length(fasta)) {
# if it has a ">" save that line for later
  if(grepl(">",fasta[i])){
    
    # else it is a sequence file and there is more to do
    #     if it matches motif1
    #         write the saved >sequenceN
    #         write the sequence line
  }else{
    if(grepl("motif1",fasta[i])){
      
    }
    seqLength=nchar(fasta[i])
    
    numG=nchar(fasta[i])-nchar(gsub("G","",fasta[i]))
    numC=nchar(fasta[i])-nchar(gsub("C","",fasta[i]))
    if(seqLength<=14){
      Tm=2*(numG+numC)+2*seqLength
      #     else if it matches motif2
      #          write the saved >sequenceN
      #          write the sequence line
     
    }else{
      
      
    }else{
      #     else
      #          write the saved >sequenceN
      #         write the sequence line
    }
    
    }

