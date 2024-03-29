## usage: multiBigwigSummary [-h] [--version]  ...
## 
## Given typically two or more bigWig files, ``multiBigwigSummary`` computes the average scores for each of the files in every genomic region.
## This analysis is performed for the entire genome by running the program in ``bins`` mode, or for certain user selected regions in ``BED-file``
## mode. Most commonly, the default output of ``multiBigwigSummary`` (a compressed numpy array, .npz) is used by other tools such as ``plotCorrelation`` or ``plotPCA`` for visualization and diagnostic purposes.
## 
## Note that using a single bigWig file is only recommended if you want to produce a bedGraph file (i.e., with the ``--outRawCounts`` option; the default output file cannot be used by ANY deepTools program if only a single file was supplied!).
## 
## A detailed sub-commands help is available by typing:
## 
##   multiBigwigSummary bins -h
## 
##   multiBigwigSummary BED-file -h
## 
## optional arguments:
##   -h, --help  show this help message and exit
##   --version   show program's version number and exit
## 
## commands:
##   
##     bins      The average score is based on equally sized bins (10 kilobases by default), which consecutively cover the entire genome. The only exception is the last bin of a
##               chromosome, which is often smaller. The output of this mode is commonly used to assess the overall similarity of different bigWig files.
##     BED-file  The user provides a BED file that contains all regions that should be considered for the analysis. A common use is to compare scores (e.g. ChIP-seq scores) between
##               different samples over a set of pre-defined peak regions.
## 
## example usage:
##  multiBigwigSummary bins -b file1.bw file2.bw -o results.npz
## 
## multiBigwigSummary BED-file -b file1.bw file2.bw -o results.npz
## --BED selection.bed 


multiBigwigSummary <- function(..., nthreads=1, params, condaenv) 
{ 
}

