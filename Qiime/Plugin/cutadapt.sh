
#!/bin/zsh

# Demultiplex sequence data (i.e., map barcode reads to sample ids
# Barcodes are expected to be located within the sequence data (versus the header, or aseparate barcode file)

## GitHub Cutadapt Documentation
# Cutadapt helps with these trimming tasks by finding the adapter or primer sequences in an error-tolerant way
# It can also modify and filter single-end and paired-end reads in various ways
# Adapter sequences can contain IUPAC wildcard characters. Cutadapt can also demultiplex your reads.

# /Users/saitoikuto/miniforge3/envs/qiime2-amplicon-2023.9/NGS_RawData/unzip_file
# basic command line syntax:
cutadapt -a GCCAAT -A CAACTA -o out.1.fastq -p out.2.fastq Bac1.raw_1.fq Bac1.raw_2.fq

# The following command-line options are applied to both reads:
#   -q (along with --quality-base)
#   --times applies to all the adapters given
#   --trim-n
#   --action
#   --length
#   --length-tag
#   --prefix, --suffix

