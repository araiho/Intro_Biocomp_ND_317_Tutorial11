#Create files to store motifs
file.create("motif1.fasta")
file.create("motif2.fasta")

#create vector that has each line of fasta as an elemnt
Line <- scan("motifsort.fasta", what = character(), sep = "\n")

#create vector of sequences to search, third element is just a dummy so that when it loops the 3rd time
#it wont find anything but I can keep everything in a single for-loop section.
seqs <- c("AKKPRVZE", "AAQWWRNYGG", "StuartJones")


#look through the loop three times
for (j in 1:3){
  #start searching on the second line so that when I delete things it won't try to delete Line[0] (doesn't exist)
  for (i in 2:length(Line)){
    #search for string specified by vector
    if (str_detect(Line[i], seqs[j]) == TRUE){
      #Write the line that has the string it in and the immediately previous line (the sequence number) to a file
      write(Line[i-1], file=paste("motif",j,".fasta", sep = ""),append=TRUE)
      write(Line[i], file=paste("motif",j,".fasta", sep = ""),append=TRUE)
      #replace those strings with blanks, tried to set to NULL but ran into some error, this is just as good
      Line[i-1] <- ""
      Line[i]<-""
    }
    #The third time you run the loop every line that has the motif we're looking for should be turned into blanks
    #leaving only the lines that didnt have either motif
  if (j == 3){
    #if a line isn't a blank..
    if(Line[i] != ""){
      #write that line into a file
    write(Line[i], file=paste("motif_other.fasta", sep = ""),append = TRUE)
    }
  }
  }
}



