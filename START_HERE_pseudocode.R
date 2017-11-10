# Problem 1:
#   
#   align each of the reference files with muscle
# make HMM profiles from each alignment with hmmbuild
# you could do the above in a loop over *.ref, but I don't think it is necessary...
# 
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
# Problem 2:
# open the fasta file for reading line by line in Python
# load teh fasta file into a vector using scan() in R
# 
# create three output files to be written to (motif1, motif2, other)
# 
# loop through the input file line by line
# if it has a ">" save that line for later
# else it is a sequence file and there is more to do
#     if it matches motif1
#         write the saved >sequenceN
#         write the sequence line
#     else if it matches motif2
#          write the saved >sequenceN
#          write the sequence line
#     else
#          write the saved >sequenceN
#         write the sequence line