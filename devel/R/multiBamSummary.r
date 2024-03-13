## usage: multiBamSummary [-h] [--version]  ...
## 
## ``multiBamSummary`` computes the read coverages for genomic regions for typically two or more BAM files.
## The analysis can be performed for the entire genome by running the program in 'bins' mode.
## If you want to count the read coverage for specific regions only, use the ``BED-file`` mode instead.
## The standard output of ``multiBamSummary`` is a compressed numpy array (``.npz``).
## It can be directly used to calculate and visualize pairwise correlation values between the read coverages using the tool 'plotCorrelation'.
## Similarly, ``plotPCA`` can be used for principal component analysis of the read coverages using the .npz file.
## Note that using a single bigWig file is only recommended if you want to produce a bedGraph file (i.e., with the ``--outRawCounts`` option; the default output file cannot be used by ANY deepTools program if only a single file was supplied!).
## 
## A detailed sub-commands help is available by typing:
## 
##   multiBamSummary bins -h
## 
##   multiBamSummary BED-file -h
## 
## optional arguments:
##   -h, --help  show this help message and exit
##   --version   show program's version number and exit
## 
## commands:
##   subcommands
## 
##               subcommands
##     bins      The coverage calculation is done for consecutive bins of equal size (10 kilobases by default). This mode is useful to assess the genome-wide similarity of BAM files. The
##               bin size and distance between bins can be adjusted.
##     BED-file  The user provides a BED file that contains all regions that should be considered for the coverage analysis. A common use is to compare ChIP-seq coverages between two
##               different samples for a set of peak regions.
## 
## example usages:
## multiBamSummary bins --bamfiles file1.bam file2.bam -o results.npz 
## 
## multiBamSummary BED-file --BED selection.bed --bamfiles file1.bam file2.bam 
## -o results.npz 


multiBamSummary <- function(..., nthreads=1, params, condaenv) 
{ 
}

