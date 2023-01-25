pwd_mpileup=$1
tumor=$2
normal=$3
log=$2.varscan2.log

echo "varscan2 start for" $2 > $log
java -Xmx12g -jar /home/mjkim/anaconda3/pkgs/varscan-2.4.4-hdfd78af_1/share/varscan-2.4.4-1/VarScan.jar somatic $1/$3.mpileup $1/$2.mpileup $2.varscan --min-var-freq 0.01 --output-vcf 1 &> $log
echo "varscan2 finish for" $2 >> $log
mv $log $2.varscan2.success
