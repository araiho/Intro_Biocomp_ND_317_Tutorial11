#!/bin/bash

#Align reference files with muscle
../../../Bioinformatics/muscle3.8.31_i86darwin64 -in sigma.ref -out sigma.align
../../../Bioinformatics/muscle3.8.31_i86darwin64 -in sporecoat.ref -out sporecoat.align
../../../Bioinformatics/muscle3.8.31_i86darwin64 -in transporter.ref -out transporter.align

#Make HMM profiles from each alignment
../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sigma.HMM sigma.align
../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmbuild sporecoat.HMM sporecoat.align
../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmbuild transporter.HMM transporter.align

for file in *.fasta
do
	for ((i = 1; i <= 3; i++))
	do
		echo "$i" 
		if [ $i == 1 ]
		then
			../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout "$file".sigma sigma.HMM "$file" 
		elif [ $i == 2 ]
		then
			../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout "$file".sporecoat sporecoat.HMM "$file" 
		else
			../../../Bioinformatics/hmmer-3.1b2-macosx-intel/binaries/hmmsearch --tblout "$file".transporter transporter.HMM "$file"
		fi
	done
done

for file in *.fasta.*
do
	cat "$file" | grep -v "#" | tr -s " " | cut -d " " -f 1,3,5 | cut -d "_" -f 2 | cut -c 2- >> Exercise11Problem1_Results.txt
done
