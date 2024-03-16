
#!/bin/zsh

## DADA2
    # • Quality filtering (filterAndTrim, fastqFilter, fastqPairedFilter) • Dereplication (derepFastq)
    # • Learn error rates (learnErrors)
    # • Sample Inference (dada)
    # • Chimera Removal (removeBimeraDenovo, isBimeraDenovo, isBimeraDenovoTable) • Merging of Paired Reads (mergePairs)
    # • Taxonomic Classification (assignTaxonomy, assignSpecies)



## Qiime2 必須options <inputはdemultiplexed fastq>
# ⭐️ 細かい設定(Trimming/chimera-method/merge/hashes/errorRate ...etc)は以下を確認
# https://docs.qiime2.org/2024.2/plugins/available/dada2/denoise-paired/
   --i-demultiplexed-seqs
   --p-trunc-len-f INTEGER 
   --p-trunc-len-r INTEGER
   --o-table
   --o-representative-sequences
   --o-denoising-stats


