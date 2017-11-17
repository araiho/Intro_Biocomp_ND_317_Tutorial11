library(stringr)

motifsort <- scan("./Exercise11_files/Problem2/motifsort.fasta", what = character(), sep="\n")

motif1 <- c()
motif2 <- c()
other <- c()

for (i in 1:length(motifsort)){
  if (str_detect(motifsort[i],">sequence")=='TRUE'){
    next()
  }
  else if (str_detect(motifsort[i],".(AKKPRVZE).")=='TRUE'){
    motif1 <- append(motif1,motifsort[i-1],after = length(motif1))
    motif1 <- append(motif1,motifsort[i],after = length(motif1))
  }
  else if (str_detect(motifsort[i],".(AAQWWRNYGG).")=='TRUE'){
    motif2 <- append(motif2,motifsort[i-1],after = length(motif2))
    motif2 <- append(motif2,motifsort[i],after = length(motif2))
  }
  else{
    other <- append(other,motifsort[i-1],after = length(other))
    other <- append(other,motifsort[i],after = length(other))
  }
}
motif1
motif2
other

write(motif1,"Motif1.fasta")
write(motif2, "Motif2.fasta")
write(other, "Other.fasta")
