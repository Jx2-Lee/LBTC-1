#!/bin/bash

normal=$1
tumor=$2
sampleName=$3
reference=$4

log=$3.strelka2.log

echo "strelka2 start for" $3 > $log
/home/mjkim/tools/strelka-2.9.2.centos6_x86_64/bin/configureStrelkaSomaticWorkflow.py --normalBam $1 --tumorBam $2 --ref $4 --runDir $3 &>> $log

echo "1st step done" >> $log
echo "runWorkflow" >> $log
$3/runWorkflow.py -m local -j 8 &>> $log
echo "strelka2 finish for" $3 >> $log
mv $3.strelka2.log $3.strelka2.success
