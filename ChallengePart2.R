rm(list=ls())

#load string package
library(stringr)

#Scan in files
fasta=scan(file="motifsort.fasta",what=character(),sep="\n")

#Set mofits
motifOne='AKKPRVZE'
motifTwo='AAQWWRNYGG'

motif1=as.data.frame(matrix(ncol = 1, nrow = 10), sep = "\n")
motif2=as.data.frame(matrix(ncol = 1, nrow = 10), sep = "\n")
NoMotif=as.data.frame(matrix(ncol = 1, nrow = 10), sep = "\n")

a=2
b=2
c=2

for (i in 1:length(fasta)){
  if (str_detect(fasta[i],motifOne)==TRUE){
    motif1[a-1,1]=fasta[i-1]
    motif1[a,1]=fasta[i]
    a=a+2
    }
  else if (str_detect(fasta[i],motifTwo)==TRUE){
    motif2[b-1,1]=fasta[i-1]
    motif2[b,1]=fasta[i]
    b=b+2
  }
  else if (str_detect(fasta[i],'sequence')==FALSE){
    NoMotif[c-1,1]=fasta[i-1]
    NoMotif[c,1]=fasta[i]
    c=c+2
  }
}

write.table(motif1, file='motif1.fasta', sep = "\n")
write.table(motif2, file='motif2.fasta', sep = "\n")
write.table(NoMotif, file='NoMotif.fasta', sep = "\n")

