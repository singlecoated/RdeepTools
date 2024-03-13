## usage: bamPEFragmentSize -b sample1.bam sample2.bam -o hist.png
## help: bamPEFragmentSize -h / bamPEFragmentSize --help
## 
## This tool calculates the fragment sizes for read pairs given a BAM file from paired-end sequencing.Several regions are sampled depending on the size of the genome and number of
## processors to estimate thesummary statistics on the fragment lengths. Properly paired reads are preferred for computation, i.e., it will only use discordant pairs if no concordant
## alignments overlap with a given region. The default setting simply prints the summary statistics to the screen.
## 
## optional arguments:
##   -h, --help            show this help message and exit
##   --bamfiles bam files [bam files ...], -b bam files [bam files ...]
##                         List of BAM files to process
##   --histogram FILE, -hist FILE, -o FILE
##                         Save a .png file with a histogram of the fragment length distribution.
##   --plotFileFormat FILETYPE
##                         Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: png, eps, pdf, svg and plotly.
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. The default is to use 1. (Default: 1)
##   --samplesLabel SAMPLESLABEL [SAMPLESLABEL ...]
##                         Labels for the samples plotted. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label
##                         itselfcontains a space E.g. --samplesLabel label-1 "label 2"
##   --plotTitle PLOTTITLE, -T PLOTTITLE
##                         Title of the plot, to be printed on top of the generated image. Leave blank for no title. (Default: )
##   --maxFragmentLength MAXFRAGMENTLENGTH
##                         The maximum fragment length in the histogram. A value of 0 (the default) indicates to use twice the mean fragment length. (Default: 0)
##   --logScale            Plot on the log scale
##   --binSize INT, -bs INT
##                         Length in bases of the window used to sample the genome. (Default: 1000)
##   --distanceBetweenBins INT, -n INT
##                         To reduce the computation time, not every possible genomic bin is sampled. This option allows you to set the distance between bins actually sampled from. Larger
##                         numbers are sufficient for high coverage samples, while smaller values are useful for lower coverage samples. Note that if you specify a value that results in
##                         too few (<1000) reads sampled, the value will be decreased. (Default: 1000000)
##   --blackListFileName BED file, -bl BED file
##                         A BED file containing regions that should be excluded from all analyses. Currently this works by rejecting genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially overlaps a blacklisted region or a fragment spans over it, then the read/fragment might still be considered.
##   --table FILE          In addition to printing read and fragment length metrics to the screen, write them to the given file in tabular format.
##   --outRawFragmentLengths FILE
##                         Save the fragment (or read if the input is single-end) length and their associated number of occurrences to a tab-separated file. Columns are length, number of
##                         occurrences, and the sample label.
##   --verbose             Set if processing data messages are wanted.
##   --version             show program's version number and exit


bamPEFragmentSize <- function(..., nthreads=1, params, condaenv) 
{ 
}

