## usage: alignmentSieve -b sample1.bam -o sample1.filtered.bam --minMappingQuality 10 --filterMetrics log.txt
## help: alignmentSieve -h / alignmentSieve --help
## 
## This tool filters alignments in a BAM/CRAM file according the the specified parameters. It can optionally output to BEDPE format.
## 
## optional arguments:
##   -h, --help            show this help message and exit
## 
## Required arguments:
##   --bam FILE1, -b FILE1
##                         An indexed BAM file.
##   --outFile OUTFILE, -o OUTFILE
##                         The file to write results to. These are the alignments or fragments that pass the filtering criteria.
## 
## General arguments:
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half the maximum number of processors or "max" to use all available processors. (Default: 1)
##   --filterMetrics FILE.log
##                         The number of entries in total and filtered are saved to this file
##   --filteredOutReads filtered.bam
##                         If desired, all reads NOT passing the filtering criteria can be written to this file.
##   --label sample1, -l sample1
##                         User defined label instead of the default label (file name).
##   --smartLabels         Instead of manually specifying a labels for the input file, this causes deepTools to use the file name after removing the path and extension.
##   --verbose, -v         Set to see processing messages.
##   --version             show program's version number and exit
##   --shift SHIFT [SHIFT ...]
##                         Shift the left and right end of a read (for BAM files) or a fragment (for BED files). A positive value shift an end to the right (on the + strand) and a negative
##                         value shifts a fragment to the left. Either 2 or 4 integers can be provided. For example, "2 -3" will shift the left-most fragment end two bases to the right and
##                         the right-most end 3 bases to the left. If 4 integers are provided, then the first and last two refer to fragments whose read 1 is on the left or right,
##                         respectively. Consequently, it is possible to take strand into consideration for strand-specific protocols. A fragment whose length falls below 1 due to shifting
##                         will not be written to the output. See the online documentation for graphical examples. Note that non-properly-paired reads will be filtered.
##   --ATACshift           Shift the produced BAM file or BEDPE regions as commonly done for ATAC-seq. This is equivalent to --shift 4 -5 5 -4.
##   --genomeChunkLength GENOMECHUNKLENGTH
##                         Size of the genome (in bps) to be processed per thread. (Default: 1000000)
## 
## Output arguments:
##   --BED                 Instead of producing BAM files, write output in BEDPE format (as defined by MACS2). Note that only reads/fragments passing filtering criterion are written in
##                         BEDPE format.
## 
## Optional arguments:
##   --filterRNAstrand {forward,reverse}
##                         Selects RNA-seq reads (single-end or paired-end) in the given strand. (Default: None)
##   --ignoreDuplicates    If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to
##                         ignore a read.
##   --minMappingQuality INT
##                         If set, only reads that have a mapping quality score of at least this are considered.
##   --samFlagInclude INT  Include reads based on the SAM flag. For example, to get only reads that are the first mate, use a flag of 64. This is useful to count properly paired reads only
##                         once, as otherwise the second mate will be also considered for the coverage.
##   --samFlagExclude INT  Exclude reads based on the SAM flag. For example, to get only reads that map to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads
##                         that map to the reverse strand.
##   --blackListFileName BED file [BED file ...], -bl BED file [BED file ...]
##                         A BED or GTF file containing regions that should be excluded from all analyses. Currently this works by rejecting genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially overlaps a blacklisted region or a fragment spans over it, then the read/fragment might still be considered.
##                         Please note that you should adjust the effective genome size, if relevant.
##   --minFragmentLength INT
##                         The minimum fragment length needed for read/pair inclusion. This option is primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome
##                         fragments. (Default: 0)
##   --maxFragmentLength INT
##                         The maximum fragment length needed for read/pair inclusion. A value of 0 indicates no limit. (Default: 0)


alignmentSieve <- function(..., nthreads=1, params, condaenv) 
{ 
}

