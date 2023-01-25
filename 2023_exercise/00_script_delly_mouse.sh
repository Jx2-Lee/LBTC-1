bam_pwd=$1
tumor=$2
normal=$3

/home/mjkim/bin/delly call -t DEL -q 15 -o $tumor.DEL.bcf -g /home/mjkim/Ref.seq/GRCm38/GRCm38.fa $bam_pwd/$tumor.s.md.bam $bam_pwd/$normal.s.md.bam &> $tumor.DEL.out & 
/home/mjkim/bin/delly call -t INS -q 15 -o $tumor.INS.bcf -g /home/mjkim/Ref.seq/GRCm38/GRCm38.fa $bam_pwd/$tumor.s.md.bam $bam_pwd/$normal.s.md.bam &> $tumor.INS.out &
/home/mjkim/bin/delly call -t DUP -q 15 -o $tumor.DUP.bcf -g /home/mjkim/Ref.seq/GRCm38/GRCm38.fa $bam_pwd/$tumor.s.md.bam $bam_pwd/$normal.s.md.bam &> $tumor.DUP.out &
/home/mjkim/bin/delly call -t INV -q 15 -o $tumor.INV.bcf -g /home/mjkim/Ref.seq/GRCm38/GRCm38.fa $bam_pwd/$tumor.s.md.bam $bam_pwd/$normal.s.md.bam &> $tumor.INV.out &
/home/mjkim/bin/delly call -t TRA -q 15 -o $tumor.TRA.bcf -g /home/mjkim/Ref.seq/GRCm38/GRCm38.fa $bam_pwd/$tumor.s.md.bam $bam_pwd/$normal.s.md.bam &> $tumor.TRA.out

echo finish
wait
