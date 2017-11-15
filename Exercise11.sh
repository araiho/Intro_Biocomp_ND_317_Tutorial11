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

