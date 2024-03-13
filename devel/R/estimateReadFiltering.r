## usage: estimateReadFiltering -b sample1.bam sample2.bam
## help: estimateReadFiltering -h / estimateReadFiltering --help
## 
## This tool estimates the number of reads that would be filtered given a set of
## settings and prints this to the terminal. Further, it tracks the number of singleton reads. The following metrics will always be tracked regardless of what you specify (the order output also matches this):
## 
##  * Total reads (including unmapped)
##  * Mapped reads
##  * Reads in blacklisted regions (--blackListFileName)
## 
## The following metrics are estimated according to the --binSize and --distanceBetweenBins parameters
##  * Estimated mapped reads filtered (the total number of mapped reads filtered for any reason)
##  * Alignments with a below threshold MAPQ (--minMappingQuality)
##  * Alignments with at least one missing flag (--samFlagInclude)
##  * Alignments with undesirable flags (--samFlagExclude)
##  * Duplicates determined by deepTools (--ignoreDuplicates)
##  * Duplicates marked externally (e.g., by picard)
##  * Singletons (paired-end reads with only one mate aligning)
##  * Wrong strand (due to --filterRNAstrand)
## 
## The sum of these may be more than the total number of reads. Note that alignments are sampled from bins of size --binSize spaced --distanceBetweenBins apart.
## 
## optional arguments:
##   -h, --help            show this help message and exit
## 
## Required arguments:
##   --bamfiles FILE1 FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...]
##                         List of indexed bam files separated by spaces.
## 
## General arguments:
##   --outFile OUTFILE, -o OUTFILE
##                         The file to write results to. By default, results are printed to the console
##   --sampleLabels SAMPLELABELS [SAMPLELABELS ...]
##                         Labels for the samples. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label itselfcontains a
##                         space E.g. --sampleLabels label-1 "label 2"
##   --smartLabels         Instead of manually specifying labels for the input BAM files, this causes deepTools to use the file name after removing the path and extension.
##   --binSize INT, -bs INT
##                         Length in bases of the window used to sample the genome. (Default: 1000000)
##   --distanceBetweenBins INT, -n INT
##                         To reduce the computation time, not every possible genomic bin is sampled. This option allows you to set the distance between bins actually sampled from. Larger
##                         numbers are sufficient for high coverage samples, while smaller values are useful for lower coverage samples. Note that if you specify a value that results in
##                         too few (<1000) reads sampled, the value will be decreased. (Default: 10000)
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half the maximum number of processors or "max" to use all available processors. (Default: 1)
##   --verbose, -v         Set to see processing messages.
##   --version             show program's version number and exit
## 
## Optional arguments:
##   --filterRNAstrand {forward,reverse}
##                         Selects RNA-seq reads (single-end or paired-end) in the given strand. (Default: None)
##   --ignoreDuplicates    If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to
##                         ignore a read.
##   --minMappingQuality INT
##                         If set, only reads that have a mapping quality score of at least this are considered.
##   --samFlagInclude INT  Include reads based on the SAM flag. For example, to get only reads that are the first mate, use a flag of 64. This is useful to count properly paired reads only
##                         once, as otherwise the second mate will be also considered for the coverage. (Default: None)
##   --samFlagExclude INT  Exclude reads based on the SAM flag. For example, to get only reads that map to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads
##                         that map to the reverse strand. (Default: None)
##   --blackListFileName BED file [BED file ...], -bl BED file [BED file ...]
##                         A BED or GTF file containing regions that should be excluded from all analyses. Currently this works by rejecting genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially overlaps a blacklisted region or a fragment spans over it, then the read/fragment might still be considered.
##                         Please note that you should adjust the effective genome size, if relevant.


estimateReadFiltering <- function(..., nthreads=1, params, condaenv) 
{ 
}

