## usage: computeGCBias -b file.bam --effectiveGenomeSize 2150570000 -g mm9.2bit -l 200 --GCbiasFrequenciesFile freq.txt
## help: computeGCBias -h / computeGCBias --help
## 
## Computes the GC-bias using Benjamini's method [Benjamini & Speed (2012). Nucleic Acids Research, 40(10). doi: 10.1093/nar/gks001]. The GC-bias is visualized and the resulting table can
## be used tocorrect the bias with `correctGCBias`.
## 
## Required arguments:
##   --bamfile bam file, -b bam file
##                         Sorted BAM file. (default: None)
##   --effectiveGenomeSize EFFECTIVEGENOMESIZE
##                         The effective genome size is the portion of the genome that is mappable. Large fractions of the genome are stretches of NNNN that should be discarded. Also, if
##                         repetitive regions were not included in the mapping of reads, the effective genome size needs to be adjusted accordingly. A table of values is available here:
##                         http://deeptools.readthedocs.io/en/latest/content/feature/effectiveGenomeSize.html . (default: None)
##   --genome 2bit FILE, -g 2bit FILE
##                         Genome in two bit format. Most genomes can be found here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise, fasta files can be
##                         converted to 2bit using the UCSC programm called faToTwoBit available for different plattforms at http://hgdownload.cse.ucsc.edu/admin/exe/ (default: None)
##   --GCbiasFrequenciesFile FILE, -freq FILE, -o FILE
##                         Path to save the file containing the observed and expected read frequencies per %GC-content. This file is needed to run the correctGCBias tool. This is a text
##                         file. (default: None)
## 
## Optional arguments:
##   --fragmentLength FRAGMENTLENGTH, -l FRAGMENTLENGTH
##                         Fragment length used for the sequencing. If paired-end reads are used, the fragment length is computed based from the bam file (default: None)
##   --help, -h            show this help message and exit
##   --sampleSize SAMPLESIZE
##                         Number of sampling points to be considered. (Default: 50000000.0)
##   --extraSampling BED file
##                         BED file containing genomic regions for which extra sampling is required because they are underrepresented in the genome. (default: None)
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
## 
## Diagnostic plot options:
##   --biasPlot FILE NAME  If given, a diagnostic image summarizing the GC-bias will be saved. (default: None)
##   --plotFileFormat      image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: "png", "eps", "pdf", "plotly" and
##                         "svg" (default: None)
##   --regionSize INT      To plot the reads per %GC over a regionthe size of the region is required. By default, the bin size is set to 300 bases, which is close to the standard fragment
##                         size for Illumina machines. However, if the depth of sequencing is low, a larger bin size will be required, otherwise many bins will not overlap with any read
##                         (Default: 300)


computeGCBias <- function(..., nthreads=1, params, condaenv) 
{ 
}

