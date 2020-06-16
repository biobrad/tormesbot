#!/bin/bash

#variables
r1check=(*1.fastq.gz)
r2check=(*2.fastq.gz)

# removes old files instead of adding to them
rm -f samples_metadata.txt

# creates heading of samples_metadata.txt file
echo -e "Samples\t""Read1\t""Read2\t""Description" >> samples_metadata.txt

# adds .fna files and adds .fasta files
declare -a fas
fas=( *.fna *.fasta )
for i in ${!fas[*]}; do
echo -e "${fas[$i]:0:5}""\t""GENOME""\t""${fas[$i]}""\t""${fas[$i]:0:5}" >> samples_metadata.txt
done

# checks for both forward and reverse pairs of fastq and then adds them to the file

if [[ -f "$r1check" && -f "$r2check" ]] ; then
for i in ${!r1check[*]}; do
echo -e "${r1check[$i]:0:6}""\t""${r1check[$i]}""\t""${r2check[$i]}""\t""${r1check[$i]:0:6}" >> samples_metadata.txt
done
else
exit 0
fi
