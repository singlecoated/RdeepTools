## usage: plotCoverage -b sample1.bam sample2.bam -o coverage.png 
## help: plotCoverage -h / plotCoverage --help
## 
## This tool is useful to assess the sequencing depth of a given sample.
## It samples 1 million bp, counts the number of overlapping reads and can report
## a histogram that tells you how many bases are covered how many times.
## Multiple BAM files are accepted, but they all should correspond to the same genome assembly.
## 
## detailed usage help:
##  $ plotCoverage  -h
## 
## optional arguments:
##   --version             show program's version number and exit
## 
## Required arguments:
##   --bamfiles FILE1 FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...]
##                         List of indexed BAM files separated by spaces.
## 
## Optional arguments:
##   --help, -h            show this help message and exit
##   --plotFile PLOTFILE, -o PLOTFILE
##                         File name to save the plot to.
##   --labels sample1 sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...]
##                         User defined labels instead of default labels from file names. Multiple labels have to be separated by spaces, e.g. --labels sample1 sample2 sample3
##   --smartLabels         Instead of manually specifying labels for the input BAM files, this causes deepTools to use the file name after removing the path and extension.
##   --plotTitle PLOTTITLE, -T PLOTTITLE
##                         Title of the plot, to be printed on top of the generated image. Leave blank for no title. (Default: )
##   --skipZeros           By setting this option, genomic regions that have zero or nan values in _all_ samples are excluded.
##   --numberOfSamples NUMBEROFSAMPLES, -n NUMBEROFSAMPLES
##                         Number of 1 bp regions to sample. (Default: 1000000)
##   --BED FILE1.bed FILE2.bed [FILE1.bed FILE2.bed ...]
##                         Limits the coverage analysis to the regions specified in these files. This overrides --numberOfSamples. Due to memory requirements, it is inadvised to combine
##                         this with --outRawCounts or many tens of thousands of regions, as per-base coverage is used!
##   --outRawCounts FILE   Save raw counts (coverages) to file.
##   --outCoverageMetrics FILE
##                         Save percentage of bins/regions above the specified thresholds to the specified file. The coverage thresholds are specified by --coverageThresholds. If no
##                         coverage thresholds are specified, the file will be empty.
##   --coverageThresholds COVERAGETHRESHOLDS, -ct COVERAGETHRESHOLDS
##                         The percentage of reported bins/regions with signal at least as high as the given threshold. This can be specified multiple times.
##   --plotHeight PLOTHEIGHT
##                         Plot height in cm. (Default: 5.0)
##   --plotWidth PLOTWIDTH
##                         Plot width in cm. The minimum value is 1 cm. (Default: 15.0)
##   --plotFileFormat FILETYPE
##                         Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: png, eps, pdf, svg and plotly.
##   --region CHR:START:END, -r CHR:START:END
##                         Region of the genome to limit the operation to - this is useful when testing parameters to reduce the computing time. The format is chr:start:end, for example
##                         --region chr10 or --region chr10:456700:891000.
##   --blackListFileName BED file [BED file ...], -bl BED file [BED file ...]
##                         A BED or GTF file containing regions that should be excluded from all analyses. Currently this works by rejecting genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially overlaps a blacklisted region or a fragment spans over it, then the read/fragment might still be considered.
##                         Please note that you should adjust the effective genome size, if relevant.
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half the maximum number of processors or "max" to use all available processors. (Default: 1)
##   --verbose, -v         Set to see processing messages.
## 
## Read processing options:
##   --extendReads [INT bp], -e [INT bp]
##                         This parameter allows the extension of reads to fragment size. If set, each read is extended, without exception. *NOTE*: This feature is generally NOT
##                         recommended for spliced-read data, such as RNA-seq, as it would extend reads over skipped regions. *Single-end*: Requires a user specified value for the final
##                         fragment length. Reads that already exceed this fragment length will not be extended. *Paired-end*: Reads with mates are always extended to match the fragment
##                         size defined by the two read mates. Unmated reads, mate reads that map too far apart (>4x fragment length) or even map to different chromosomes are treated like
##                         single-end reads. The input of a fragment length value is optional. If no value is specified, it is estimated from the data (mean of the fragment size of all
##                         mate reads).
##   --ignoreDuplicates    If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to
##                         ignore a read.
##   --minMappingQuality INT
##                         If set, only reads that have a mapping quality score of at least this are considered.
##   --centerReads         By adding this option, reads are centered with respect to the fragment length. For paired-end data, the read is centered at the fragment length defined by the
##                         two ends of the fragment. For single-end data, the given fragment length is used. This option is useful to get a sharper signal around enriched regions.
##   --samFlagInclude INT  Include reads based on the SAM flag. For example, to get only reads that are the first mate, use a flag of 64. This is useful to count properly paired reads only
##                         once, as otherwise the second mate will be also considered for the coverage. (Default: None)
##   --samFlagExclude INT  Exclude reads based on the SAM flag. For example, to get only reads that map to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads
##                         that map to the reverse strand. (Default: None)
##   --minFragmentLength INT
##                         The minimum fragment length needed for read/pair inclusion. This option is primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome
##                         fragments. (Default: 0)
##   --maxFragmentLength INT
##                         The maximum fragment length needed for read/pair inclusion. (Default: 0)
## 
## example usages:
## plotCoverage --bamfiles file1.bam file2.bam -o results.png
## 
##  


plotCoverage <- function(..., nthreads=1, params, condaenv) 
{ 
}

