#!/bin/bash
set -e
fastq1=$1
fastq2=$2
sampleName=$3
reference=$4

echo create sam using bwa mem
bwa mem -M -t 8 -R "@RG\tID:$sampleName\tLB:1\tSM:$sampleName\tPL:ILLUMINA" $reference $fastq1 $fastq2 > $sampleName.sam 2> $sampleName.bwamem.out 


echo sam to bam
samtools view -Sb -@ 8 -o $sampleName.bam $sampleName.sam > $sampleName.StoB.out 2>&1 
#rm $sampleName.sam

echo sort
samtools sort -@ 8 -o $sampleName.s.bam $sampleName.bam > $sampleName.sort.out 2>&1 
#rm $sampleName.bam

echo MarkDuplicate
java -Xms8g -Xmx12g -jar /home/mjkim/tools/picard/picard.jar MarkDuplicates REMOVE_DUPLICATES=true REMOVE_SEQUENCING_DUPLICATES=true I=$sampleName.s.bam O=$sampleName.s.md.bam M=$sampleName.matrics.txt VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=true > $sampleName.markdup.out 2>&1 
#rm $sampleName.s.bam
