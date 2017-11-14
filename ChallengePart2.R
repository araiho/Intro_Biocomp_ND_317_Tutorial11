rm(list=ls())

#load string package
library(stringr)
library(seqinr)

#Scan in files
fasta=scan(file="motifsort.fasta",what=character(),sep="\n")

#Set mofits
motifOne='AKKPRVZE'
motifTwo='AAQWWRNYGG'

motif1Names=vector(mode='list',length=11)
motif2Names=vector(mode='list',length=13)
NoMotifNames=vector(mode='list',length=66)

motif1=vector(mode='list',length=11)
motif2=vector(mode='list',length=13)
NoMotif=vector(mode='list',length=66)

a=1
b=1
c=1

for (i in 1:length(fasta)){
  if (str_detect(fasta[i],motifOne)==TRUE){
    motif1Names[a]=fasta[i-1]
    motif1[a]=fasta[i]
    a=a+1
    }
  else if (str_detect(fasta[i],motifTwo)==TRUE){
    motif2Names[b]=fasta[i-1]
    motif2[b]=fasta[i]
    b=b+1
  }
  else if (str_detect(fasta[i],'sequence')==FALSE){
    NoMotifNames[c]=fasta[i-1]
    NoMotif[c]=fasta[i]
    c=c+1
  }
}

for (i in 1:length(motif1Names)){
  motif1Names[i]=str_replace_all(motif1Names[i],">","")
}

for (i in 1:length(motif2Names)){
  motif2Names[i]=str_replace_all(motif2Names[i],">","")
}

for (i in 1:length(NoMotifNames)){
  NoMotifNames[i]=str_replace_all(NoMotifNames[i],">","")
}

write.fasta(sequences=motif1, names=motif1Names,file.out="motif1.fasta")
write.fasta(sequences=motif2, names=motif2Names,file.out="motif2.fasta")
write.fasta(sequences=NoMotif, names=NoMotifNames,file.out="NoMotif.fasta")