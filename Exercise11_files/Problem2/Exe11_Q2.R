setwd("C:/Users/DAVIS/Desktop/shell-novice-data/exe11/Intro_Biocomp_ND_317_Tutorial11/")

fasta=scan(file="Exercise11_files/Problem2/motifsort.fasta", what=character())
library('stringr')

list1<-which(str_detect(fasta,"AKKPRVZE"))
list2<-which(str_detect(fasta,"AAQWWRNYGG"))
list3<-seq(from=2, to=length(fasta), by=2) 
list4 <- setdiff(list3,c(list1,list2))

for(i in 1:length(list1)){
  a = 2*i-1
  b = 2*i
  motif_1[a] <- fasta[which(str_detect(fasta,"AKKPRVZE"))-1]
  motif_1[b] <- fasta[which(str_detect(fasta,"AKKPRVZE"))]
}
write.table(motif_1, "Exercise11_files/Problem2/Motif1.txt")

for(i in 1:length(list2)){
  a = 2*i-1
  b = 2*i
  motif_2[a] <- fasta[which(str_detect(fasta,"AAQWWRNYGG"))-1]
  motif_2[b] <- fasta[which(str_detect(fasta,"AAQWWRNYGG"))]
}
write.table(motif_2, "Exercise11_files/Problem2/Motif2.txt")


for(i in 1:length(list4)){
  a = 2*i-1
  b = 2*i
  other[a] <- fasta[list4-1]
  other[b] <- fasta[list4]
}
write.table(other, "Exercise11_files/Problem2/other.txt")
