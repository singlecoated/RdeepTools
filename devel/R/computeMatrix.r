## usage: An example usage is:
##   computeMatrix reference-point -S <biwig file(s)> -R <bed file> -a 3000 -b 3000

## optional arguments:
##   -h, --help            show this help message and exit

## Required arguments:
##   --regionsFileName File [File ...], -R File [File ...]
##                         File name or names, in BED or GTF format, containing
##                         the regions to plot. If multiple bed files are given,
##                         each one is considered a group that can be plotted
##                         separately. Also, adding a "#" symbol in the bed file
##                         causes all the regions until the previous "#" to be
##                         considered one group. (default: None)
##   --scoreFileName File [File ...], -S File [File ...]
##                         bigWig file(s) containing the scores to be plotted.
##                         Multiple files should be separated by spaced. BigWig
##                         files can be obtained by using the bamCoverage or
##                         bamCompare tools. More information about the bigWig
##                         file format can be found at
##                         http://genome.ucsc.edu/goldenPath/help/bigWig.html
##                         (default: None)

## Output options:
##   --outFileName OUTFILENAME, -out OUTFILENAME, -o OUTFILENAME
##                         File name to save the gzipped matrix file needed by
##                         the "plotHeatmap" and "plotProfile" tools. (default:
##                         None)
##   --outFileNameMatrix FILE
##                         If this option is given, then the matrix of values
##                         underlying the heatmap will be saved using the
##                         indicated name, e.g. IndividualValues.tab.This matrix
##                         can easily be loaded into R or other programs.
##                         (default: None)
##   --outFileSortedRegions BED file
##                         File name in which the regions are saved after skiping
##                         zeros or min/max threshold values. The order of the
##                         regions in the file follows the sorting order
##                         selected. This is useful, for example, to generate
##                         other heatmaps keeping the sorting of the first
##                         heatmap. Example: Heatmap1sortedRegions.bed (default:
##                         None)

## Optional arguments:
##   --version             show program's version number and exit
##   --referencePoint {TSS,TES,center}
##                         The reference point for the plotting could be either
##                         the region start (TSS), the region end (TES) or the
##                         center of the region. Note that regardless of what you
##                         specify, plotHeatmap/plotProfile will default to using
##                         "TSS" as the label. (Default: TSS)
##   --beforeRegionStartLength INT bp, -b INT bp, --upstream INT bp
##                         Distance upstream of the reference-point selected.
##                         (Default: 500)
##   --afterRegionStartLength INT bp, -a INT bp, --downstream INT bp
##                         Distance downstream of the reference-point selected.
##                         (Default: 1500)
##   --nanAfterEnd         If set, any values after the region end are discarded.
##                         This is useful to visualize the region end when not
##                         using the scale-regions mode and when the reference-
##                         point is set to the TSS. (default: False)
##   --binSize BINSIZE, -bs BINSIZE
##                         Length, in bases, of the non-overlapping bins for
##                         averaging the score over the regions length. (Default:
##                         10)
##   --sortRegions {descend,ascend,no,keep}
##                         Whether the output file should present the regions
##                         sorted. The default is to not sort the regions. Note
##                         that this is only useful if you plan to plot the
##                         results yourself and not, for example, with
##                         plotHeatmap, which will override this. Note also that
##                         unsorted output will be in whatever order the regions
##                         happen to be processed in and not match the order in
##                         the input files. If you require the output order to
##                         match that of the input regions, then either specify
##                         "keep" or use computeMatrixOperations to resort the
##                         results file. (Default: keep)
##   --sortUsing {mean,median,max,min,sum,region_length}
##                         Indicate which method should be used for sorting. The
##                         value is computed for each row.Note that the
##                         region_length option will lead to a dotted line within
##                         the heatmap that indicates the end of the regions.
##                         (Default: mean)
##   --sortUsingSamples SORTUSINGSAMPLES [SORTUSINGSAMPLES ...]
##                         List of sample numbers (order as in matrix), that are
##                         used for sorting by --sortUsing, no value uses all
##                         samples, example: --sortUsingSamples 1 3 (default:
##                         None)
##   --averageTypeBins {mean,median,min,max,std,sum}
##                         Define the type of statistic that should be used over
##                         the bin size range. The options are: "mean", "median",
##                         "min", "max", "sum" and "std". The default is "mean".
##                         (Default: mean)
##   --missingDataAsZero   If set, missing data (NAs) will be treated as zeros.
##                         The default is to ignore such cases, which will be
##                         depicted as black areas in a heatmap. (see the
##                         --missingDataColor argument of the plotHeatmap command
##                         for additional options). (default: False)
##   --skipZeros           Whether regions with only scores of zero should be
##                         included or not. Default is to include them. (default:
##                         False)
##   --minThreshold MINTHRESHOLD
##                         Numeric value. Any region containing a value that is
##                         less than or equal to this will be skipped. This is
##                         useful to skip, for example, genes where the read
##                         count is zero for any of the bins. This could be the
##                         result of unmappable areas and can bias the overall
##                         results. (Default: None)
##   --maxThreshold MAXTHRESHOLD
##                         Numeric value. Any region containing a value greater
##                         than or equal to this will be skipped. The
##                         maxThreshold is useful to skip those few regions with
##                         very high read counts (e.g. micro satellites) that may
##                         bias the average values. (Default: None)
##   --blackListFileName BED file, -bl BED file
##                         A BED file containing regions that should be excluded
##                         from all analyses. Currently this works by rejecting
##                         genomic chunks that happen to overlap an entry.
##                         Consequently, for BAM files, if a read partially
##                         overlaps a blacklisted region or a fragment spans over
##                         it, then the read/fragment might still be considered.
##                         (default: None)
##   --samplesLabel SAMPLESLABEL [SAMPLESLABEL ...]
##                         Labels for the samples. This will then be passed to
##                         plotHeatmap and plotProfile. The default is to use the
##                         file name of the sample. The sample labels should be
##                         separated by spaces and quoted if a label
##                         itselfcontains a space E.g. --samplesLabel label-1
##                         "label 2" (default: None)
##   --smartLabels         Instead of manually specifying labels for the input
##                         bigWig and BED/GTF files, this causes deepTools to use
##                         the file name after removing the path and extension.
##                         (default: False)
##   --quiet, -q           Set to remove any warning or processing messages.
##                         (default: False)
##   --verbose             Being VERY verbose in the status messages. --quiet
##                         will disable this. (default: False)
##   --scale SCALE         If set, all values are multiplied by this number.
##                         (Default: 1)
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half
##                         the maximum number of processors or "max" to use all
##                         available processors. (Default: 1)

## GTF/BED12 options:
##   --metagene            When either a BED12 or GTF file are used to provide
##                         regions, perform the computation on the merged exons,
##                         rather than using the genomic interval defined by the
##                         5-prime and 3-prime most transcript bound (i.e.,
##                         columns 2 and 3 of a BED file). If a BED3 or BED6 file
##                         is used as input, then columns 2 and 3 are used as an
##                         exon. (Default: False)
##   --transcriptID TRANSCRIPTID
##                         When a GTF file is used to provide regions, only
##                         entries with this value as their feature (column 3)
##                         will be processed as transcripts. (Default:
##                         transcript)
##   --exonID EXONID       When a GTF file is used to provide regions, only
##                         entries with this value as their feature (column 3)
##                         will be processed as exons. CDS would be another
##                         common value for this. (Default: exon)
##   --transcript_id_designator TRANSCRIPT_ID_DESIGNATOR
##                         Each region has an ID (e.g., ACTB) assigned to it,
##                         which for BED files is either column 4 (if it exists)
##                         or the interval bounds. For GTF files this is instead
##                         stored in the last column as a key:value pair (e.g.,
##                         as 'transcript_id "ACTB"', for a key of transcript_id
##                         and a value of ACTB). In some cases it can be
##                         convenient to use a different identifier. To do so,
##                         set this to the desired key. (Default: transcript_id)

## deepBlue arguments:
##   Options used only for remote bedgraph/wig files hosted on deepBlue

##   --deepBlueURL DEEPBLUEURL
##                         For remote files bedgraph/wiggle files hosted on
##                         deepBlue, this specifies the server URL. The default
##                         is "http://deepblue.mpi-inf.mpg.de/xmlrpc", which
##                         should not be changed without good reason. (default:
##                         http://deepblue.mpi-inf.mpg.de/xmlrpc)
##   --userKey USERKEY     For remote files bedgraph/wiggle files hosted on
##                         deepBlue, this specifies the user key to use for
##                         access. The default is "anonymous_key", which suffices
##                         for public datasets. If you need access to a
##                         restricted access/private dataset, then request a key
##                         from deepBlue and specify it here. (default:
##                         anonymous_key)
##   --deepBlueTempDir DEEPBLUETEMPDIR
##                         If specified, temporary files from preloading datasets
##                         from deepBlue will be written here (note, this
##                         directory must exist). If not specified, where ever
##                         temporary files would normally be written on your
##                         system is used. (default: None)
##   --deepBlueKeepTemp    If specified, temporary bigWig files from preloading
##                         deepBlue datasets are not deleted. A message will be
##                         printed noting where these files are and what sample
##                         they correspond to. These can then be used if you wish
##                         to analyse the same sample with the same regions
##                         again. (default: False)

computeMatrix <- function(type=NULL,scoreFileName, regionsFileName, outFileName, nthreads=1, params='', condaenv)
{
    if (length(params)>0) params <- paste(paste0('--',names(params)),params)
    cmd <- sprintf('computeMatrix %s --scoreFileName %s --regionsFileName %s --outFileName %s -p %s %s',
                   type, ## reference-point or scale-regions
                   paste(scoreFileName,collapse=' '),paste(regionsFileName,collapse=' '),outFileName,nthreads,paste(params,collapse=' '))
    print(sprintf('Using Conda Environment %s',condaenv))
    print(sprintf('Running deepTools command %s',cmd))
    ##use_condaenv(condaenv)
    system(cmd)
}
