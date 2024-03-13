## usage: plotFingerprint -b treatment.bam control.bam -plot fingerprint.png
## help: plotFingerprint -h / plotFingerprint --help
## 
## This tool samples indexed BAM files and plots a profile of cumulative read coverages for each. All reads overlapping a window (bin) of the specified length are counted; these counts are
## sorted and the cumulative sum is finally plotted.
## 
## Required arguments:
##   --bamfiles bam files [bam files ...], -b bam files [bam files ...]
##                         List of indexed BAM files (default: None)
## 
## Output:
##   --plotFile , -plot , -o 
##                         File name of the output figure. The file ending will be used to determine the image format. The available options are typically: "png", "eps", "pdf" and "svg",
##                         e.g. : fingerprint.png. (default: None)
##   --outRawCounts        Output file name to save the read counts per bin. (default: None)
## 
## Read processing options:
##   --extendReads [INT bp], -e [INT bp]
##                         This parameter allows the extension of reads to fragment size. If set, each read is extended, without exception. *NOTE*: This feature is generally NOT
##                         recommended for spliced-read data, such as RNA-seq, as it would extend reads over skipped regions. *Single-end*: Requires a user specified value for the final
##                         fragment length. Reads that already exceed this fragment length will not be extended. *Paired-end*: Reads with mates are always extended to match the fragment
##                         size defined by the two read mates. Unmated reads, mate reads that map too far apart (>4x fragment length) or even map to different chromosomes are treated like
##                         single-end reads. The input of a fragment length value is optional. If no value is specified, it is estimated from the data (mean of the fragment size of all
##                         mate reads). (default: False)
##   --ignoreDuplicates    If set, reads that have the same orientation and start position will be considered only once. If reads are paired, the mate's position also has to coincide to
##                         ignore a read. (default: False)
##   --minMappingQuality INT
##                         If set, only reads that have a mapping quality score of at least this are considered. (default: None)
##   --centerReads         By adding this option, reads are centered with respect to the fragment length. For paired-end data, the read is centered at the fragment length defined by the
##                         two ends of the fragment. For single-end data, the given fragment length is used. This option is useful to get a sharper signal around enriched regions.
##                         (default: False)
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
## Optional arguments:
##   --help, -h            show this help message and exit
##   --labels  [ ...], -l  [ ...]
##                         List of labels to use in the output. If not given, the file names will be used instead. Separate the labels by spaces. (default: None)
##   --smartLabels         Instead of manually specifying labels for the input BAM/bigWig files, this causes deepTools to use the file name after removing the path and extension. (default:
##                         False)
##   --binSize BINSIZE, -bs BINSIZE
##                         Window size in base pairs to sample the genome. This times --numberOfSamples should be less than the genome size. (Default: 500)
##   --numberOfSamples NUMBEROFSAMPLES, -n NUMBEROFSAMPLES
##                         The number of bins that are sampled from the genome, for which the overlapping number of reads is computed. (Default: 500000.0)
##   --plotFileFormat      image format type. If given, this option overrides the image format based on the ending given via --plotFile ending. The available options are: "png", "eps",
##                         "pdf", "plotly" and "svg" (default: None)
##   --plotTitle PLOTTITLE, -T PLOTTITLE
##                         Title of the plot, to be printed on top of the generated image. Leave blank for no title. (Default: )
##   --skipZeros           If set, then regions with zero overlapping readsfor *all* given BAM files are ignored. This will result in a reduced number of read counts than that specified in
##                         --numberOfSamples (default: False)
##   --outQualityMetrics FILE.txt
##                         Quality metrics can optionally be output to this file. The file will have one row per input BAM file and columns containing a number of metrics. Please see the
##                         online documentation for a longer explanation: http://deeptools.readthedocs.io/en/latest/content/feature/plotFingerprint_QC_metrics.html . (default: None)
##   --JSDsample sample.bam
##                         Reference sample against which to compute the Jensen-Shannon distance and the CHANCE statistics. If this is not specified, then these will not be calculated. If
##                         --outQualityMetrics is not specified then this will be ignored. The Jensen-Shannon implementation is based on code from Sitanshu Gakkhar at BCGSC. The CHANCE
##                         implementation is based on code from Matthias Haimel. (default: None)
##   --version             show program's version number and exit
##   --region CHR:START:END, -r CHR:START:END
##                         Region of the genome to limit the operation to - this is useful when testing parameters to reduce the computing time. The format is chr:start:end, for example
##                         --region chr10 or --region chr10:456700:891000. (default: None)
##   --blackListFileName BED file [BED file ...], -bl BED file [BED file ...]
##                         A BED or GTF file containing regions that should be excluded from all analyses. Currently this works by rejecting genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially overlaps a blacklisted region or a fragment spans over it, then the read/fragment might still be considered.
##                         Please note that you should adjust the effective genome size, if relevant. (default: None)
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half the maximum number of processors or "max" to use all available processors. (Default: 1)
##   --verbose, -v         Set to see processing messages. (default: False)


plotFingerprint <- function(..., nthreads=1, params, condaenv) 
{ 
}

