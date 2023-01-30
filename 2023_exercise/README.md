# **LBTC_2023_exercise**     

## Materials      
* Human: HCIR1, HCIR1_SC1, HCIR1_SC2, HCIR1_SC3      
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; HBIR1_germline, HBIR1-1, HBIR1-2       
* Mouse: N1-spleen, N1-S1, S1N2P16_4-7, S1N2P16_4-8      



## Methods
### 1. Create Bam file
#### tools       
[download_bwa-mem](https://github.com/lh3/bwa.git)          
[download_samtools](http://www.htslib.org/download/)         
[download_picard](https://broadinstitute.github.io/picard/)     

[bamprocessing_script](https://github.com/mjkim23/LBTC/blob/d23506ae899132f94edd8ba2d18ba0ec4b0527f9/2023_exercise/00_script_bamprocessing.sh)

### 2. Variant Calling
#### Strelka2
[download_strelka2](https://github.com/Illumina/strelka/blob/v2.9.x/docs/userGuide/quickStart.md)    
[strelka2_script](https://github.com/mjkim23/LBTC/blob/d23506ae899132f94edd8ba2d18ba0ec4b0527f9/2023_exercise/00_script_strelka.sh)
#### VarScan2
[mpileup_script](https://github.com/mjkim23/LBTC/blob/d23506ae899132f94edd8ba2d18ba0ec4b0527f9/2023_exercise/00_script_mpileup.sh)      
[varscan2_script](https://github.com/mjkim23/LBTC/blob/d23506ae899132f94edd8ba2d18ba0ec4b0527f9/2023_exercise/00_script_varscan.sh)
#### Delly
[delly_script](https://github.com/mjkim23/LBTC/blob/d23506ae899132f94edd8ba2d18ba0ec4b0527f9/2023_exercise/00_script_delly_mouse.sh)  
#### Sequenza2
[download_sequenza](https://cran.r-project.org/web/packages/sequenza/vignettes/sequenza.html#about)
#### Mutect2
picard로 reference의 dict file 생성 → gatk 사용

### 3. Filtering
