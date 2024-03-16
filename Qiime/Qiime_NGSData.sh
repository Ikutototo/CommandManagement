
#!/bin/zsh

# ----- Mar 7, 2024 at 16:31:39 -----
# ===== Importing Data into Qiime2[NGSData] =====
# ⭐️ [fastq → QIIMEArtifact(qza)]
   # SampleMetaDataは，大元であるNGS_RawDataに格納
   # fastq.gz(fq.gz)は，新たなirectory内に格納[今回はfilepath]

   conda activate qiime2-amplicon-2023.9 \
   cd /Users/saitoikuto/miniforge3/envs/qiime2-amplicon-2023.9/NGS_RawData \
   qiime tools import \
   --type 'SampleData[PairedEndSequencesWithQuality]' \
   --input-path metadata_v2.txt \
   --input-format PairedEndFastqManifestPhred33V2 \
   --output-path paired-end-demux.qza 

# ===== Demultiplexing sequences =====
# ⭐️ [barcodeRemove → demux or cutadapt → QCcheck Visualization]
# 各readのQualityを配列の長さ別にSummaryを表示
   qiime demux summarize \
   --i-data paired-end-demux.qza \
   --o-visualization paired-end-demux.qzv 
   # [QCcheck-visualization → Boxplot]
   qiime tools view paired-end-demux.qzv





# Novogen [16S/18S/ITS Amplicon Metagenomic Sequencing] → V4 Region [515F: GTGCCAGCMGCCGCGGTAA / 806R: GGACTACHVGGGTWTCTAAT]
# Greengenes 13_8 99% OTUs, where the sequences have been trimmed to only include 250 bases from the region of the 16S 
# that was sequenced in this analysis (the V4 region, bound by the 515F/806R primer pair).


