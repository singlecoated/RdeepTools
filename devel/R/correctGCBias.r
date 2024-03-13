## usage: correctGCBias -b file.bam --effectiveGenomeSize 2150570000 -g mm9.2bit --GCbiasFrequenciesFile freq.txt -o gc_corrected.bam
## help: correctGCBias -h / correctGCBias --help
## 
## This tool corrects the GC-bias using the method proposed by [Benjamini & Speed (2012). Nucleic Acids Research, 40(10)]. It will remove reads from regions with too high coverage compared
## to the expected values (typically GC-rich regions) and will add reads to regions where too few reads are seen (typically AT-rich regions). The tool ``computeGCBias`` needs to be run
## first to generate the frequency table needed here.
## 
## Required arguments:
##   --bamfile BAM file, -b BAM file
##                         Sorted BAM file to correct. (default: None)
##   --effectiveGenomeSize EFFECTIVEGENOMESIZE
##                         The effective genome size is the portion of the genome that is mappable. Large fractions of the genome are stretches of NNNN that should be discarded. Also, if
##                         repetitive regions were not included in the mapping of reads, the effective genome size needs to be adjusted accordingly. A table of values is available here:
##                         http://deeptools.readthedocs.io/en/latest/content/feature/effectiveGenomeSize.html . (default: None)
##   --genome two bit file, -g two bit file
##                         Genome in two bit format. Most genomes can be found here: http://hgdownload.cse.ucsc.edu/gbdb/ Search for the .2bit ending. Otherwise, fasta files can be
##                         converted to 2bit using faToTwoBit available here: http://hgdownload.cse.ucsc.edu/admin/exe/ (default: None)
##   --GCbiasFrequenciesFile FILE, -freq FILE
##                         Indicate the output file from computeGCBias containing the observed and expected read frequencies per GC-content. (default: None)
## 
## Output options:
##   --correctedFile FILE, -o FILE
##                         Name of the corrected file. The ending will be used to decide the output file format. The options are ".bam", ".bw" for a bigWig file, ".bg" for a bedGraph file.
##                         (default: None)
## 
## Optional arguments:
##   --help, -h            show this help message and exit
##   --version             show program's version number and exit
##   --binSize INT bp, -bs INT bp
##                         Size of the bins, in bases, for the output of the bigwig/bedgraph file. (Default: 50)
##   --region CHR:START:END, -r CHR:START:END
##                         Region of the genome to limit the operation to - this is useful when testing parameters to reduce the computing time. The format is chr:start:end, for example
##                         --region chr10 or --region chr10:456700:891000. (default: None)
##   --numberOfProcessors INT, -p INT
##                         Number of processors to use. Type "max/2" to use half the maximum number of processors or "max" to use all available processors. (Default: 1)
##   --verbose, -v         Set to see processing messages. (default: False)


correctGCBias <- function(..., nthreads=1, params, condaenv) 
{ 
}

