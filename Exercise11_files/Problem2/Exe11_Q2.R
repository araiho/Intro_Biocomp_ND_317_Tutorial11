setwd("C:/Users/DAVIS/Desktop/shell-novice-data/exe11/Intro_Biocomp_ND_317_Tutorial11/Exercise11_files/Problem2/")

fasta=scan(file="motifsort.fasta", what=character())
library('stringr')

list1<-which(str_detect(fasta,"AKKPRVZE"))
list2<-which(str_detect(fasta,"AAQWWRNYGG"))
list3<-seq(from=2, to=length(fasta), by=2) 

list4 <- setdiff(list3,c(list1,list2))

motif_1 <- fasta[which(str_detect(fasta,"AKKPRVZE"))-1]
write.table(motif_1, "Motif1.txt")
motif_2 <- fasta[which(str_detect(fasta,"AAQWWRNYGG"))-1]
write.table(motif_2, "Motif2.txt")

other <- fasta[list4-1]
write.table(other, "other.txt")
