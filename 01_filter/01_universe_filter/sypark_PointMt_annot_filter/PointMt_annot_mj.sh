#!/bin/bash
input=$1
tbam=$2
nbam=$3
srcDir=$4
ref=$5

outDir=$(dirname $input)
log=$outDir/$input.annot.log

echo $input > $log
echo "Starting: Readinfo annot"
(python /home/mjkim/mjkim_universal_filter/01_universe_filter/sypark_PointMt_annot_filter/src/readinfo_anno_bwa_190314_Y_mj.py $input $tbam) &>> $log || { c=$?;echo "Error";exit $c; }
echo "done"
echo "Starting: N readcount annot"
(python /home/mjkim/mjkim_universal_filter/01_universe_filter/sypark_PointMt_annot_filter/src/readcount_only_anno_190314_clipinsdeladd_Y_mj.py $input.readinfo $nbam pairN) &>> $log || { c=$?;echo "Error";exit $c; }
echo "done"
rm $input.readinfo
echo "Starting: Local reassembly annot"
(python /home/mjkim/mjkim_universal_filter/01_universe_filter/sypark_PointMt_annot_filter/src/read_local_reassembly_RPsize_190311_mj.py $input.readinfo.readc $tbam $nbam $ref) &>> $log || { c=$?;echo "Error";exit $c; }
echo "done"
rm $input.readinfo.readc

