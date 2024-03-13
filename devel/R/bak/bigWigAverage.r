## usage: bigwigAverage -b sample1.bw sample2.bw -o outfile.bw
## help: bigwigAverage -h / bigwigAverage --help

## This tool average multiple bigWig files based on the number of mapped reads. To average the bigWig files, the genome is partitioned into bins of equal size, then the scores in each
## bigwig file are computed per bin.These scores are averaged and scaleFactors can be applied before the average.

## optional arguments:
##   -h, --help            show this help message and exit
##   --bigwigs Bigwig files [Bigwig files ...], -b Bigwig files [Bigwig files ...]
##                         Bigwig files separated by space. (default: None)
##   --scaleFactors SCALEFACTORS
##                         Set this parameter to multipy the bigwig values by a constant. The format is scaleFactor1:scaleFactor2:scaleFactor3 etc. For example 0.7:1 to scale the first
##                         bigwig file by 0.7 while not scaling the second bigwig file (default: None)
##   --skipNonCoveredRegions, --skipNAs
##                         This parameter determines if non-covered regions (regions without a score) in the bigWig files should be skipped. The default is to treat those regions as having
##                         a value of zero. The decision to skip non-covered regions depends on the interpretation of the data. Non-covered regions in a bigWig file may represent
##                         repetitive regions that should be skipped. Alternatively, the interpretation of non-covered regions as zeros may be wrong and this option should be used
##                         (default: False)

## Optional arguments:
##   --version             show program's version number and exit
##   --binSize INT bp, -bs INT bp
##                         Size of the bins, in bases, for the output of the bigwig/bedgraph file. (Default: 50)
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

## Output:
##   --outFileName FILENAME, -o FILENAME
##                         Output file name. (default: None)
##   --outFileFormat {bigwig,bedgraph}, -of {bigwig,bedgraph}
##                         Output file type. Either "bigwig" or "bedgraph". (default: bigwig)

## deepBlue arguments:
##   Options used only for remote bedgraph/wig files hosted on deepBlue

##   --deepBlueURL DEEPBLUEURL
##                         For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the server URL. The default is "http://deepblue.mpi-inf.mpg.de/xmlrpc", which should
##                         not be changed without good reason. (default: http://deepblue.mpi-inf.mpg.de/xmlrpc)
##   --userKey USERKEY     For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the user key to use for access. The default is "anonymous_key", which suffices for
##                         public datasets. If you need access to a restricted access/private dataset, then request a key from deepBlue and specify it here. (default: anonymous_key)
##   --deepBlueTempDir DEEPBLUETEMPDIR
##                         If specified, temporary files from preloading datasets from deepBlue will be written here (note, this directory must exist). If not specified, where ever
##                         temporary files would normally be written on your system is used. (default: None)
##   --deepBlueKeepTemp    If specified, temporary bigWig files from preloading deepBlue datasets are not deleted. A message will be printed noting where these files are and what sample
##                         they correspond to. These can then be used if you wish to analyse the same sample with the same regions again. (default: False)

bigWigAverage <- function(infiles,outfile,nthreads=1,params,condaenv)
{
    ## check binary exists
    ## check input files exist
    ## check output dir exist
    ## activate conda env
    cmd <- sprintf('bigwigAverage -b %s -o %s -p %s %s',
                   paste(infiles,collapse=' '),
                   outfile,
                   nthreads,
                   params)
    printf('Running command %s',cmd)
    system(cmd)
    ## deactivate conda env
    ## bye
}

## The End
