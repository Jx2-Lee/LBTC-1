ref=$1
bamfolderpath=$2
sample_name=$3

samtools mpileup -B -Q 20 -q 20 -f $1 $2/$3.s.md.bam -o $3.mpileup &> $3.mpileup.out
