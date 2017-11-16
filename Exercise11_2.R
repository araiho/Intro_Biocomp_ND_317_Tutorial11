

fastadata<-scan(file="~/Desktop/data-shell/Intro_Biocomp_ND_317_Tutorial11/Problem2/motifsort.fasta",what=character())

file.create("motif1.fasta")
file.create("motif2.fasta")
file.create("motifOther.fasta")

motif1 <- "[AKKPRVZE]"
motif2 <- "[AAQWWRNYGG]"

str_detect(inFile[i],">")

for(i in 1:length(fastadata)){
  if(i==motif1){
    write(file="motif1.fasta",append=TRUE)
  }else if (i==motif2){
    write(file="motif2.fasta",append=TRUE)
  } else{
    write(file="motifOther.fasta",append=TRUE)
  }
}

