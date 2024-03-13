## usage: computeMatrixOperations [-h] [--version]  ...
## 
## This tool performs a variety of operations on files produced by computeMatrix.
## 
## detailed help:
## 
##   computeMatrixOperations info -h
## 
## or
## 
##   computeMatrixOperations relabel -h
## 
## or
## 
##   computeMatrixOperations subset -h
## 
## or
## 
##   computeMatrixOperations filterStrand -h
## 
## or
## 
##   computeMatrixOperations filterValues -h
## 
## or
## 
##   computeMatrixOperations rbind -h
## 
## or
## 
##   computeMatrixOperations cbind -h
## 
## or
##   computeMatrixOperations sort -h
## 
## or
##   computeMatrixOperations dataRange -h
## 
## optional arguments:
##   -h, --help    show this help message and exit
##   --version     show program's version number and exit
## 
## Commands:
##   
##     info        Print group and sample information
##     relabel     Change sample and/or group label information
##     subset      Actually subset the matrix. The group and sample orders are honored, so one can also reorder files.
##     filterStrand
##                 Filter entries by strand.
##     filterValues
##                 Filter entries by min/max value.
##     rbind       merge multiple matrices by concatenating them head to tail. This assumes that the same samples are present in each in the same order.
##     cbind       merge multiple matrices by concatenating them left to right. No assumptions are made about the row order. Regions not present in the first file specified are ignored.
##                 Regions missing in subsequent files will result in NAs. Regions are matches based on the first 6 columns of the computeMatrix output (essentially the columns in a BED
##                 file).
##     sort        Sort a matrix file to correspond to the order of entries in the desired input file(s). The groups of regions designated by the files must be present in the order found
##                 in the output of computeMatrix (otherwise, use the subset command first). Note that this subcommand can also be used to remove unwanted regions, since regions not
##                 present in the input file(s) will be omitted from the output.
##     dataRange   Returns the min, max, median, 10th and 90th percentile of the matrix values per sample.
## 
## example usages:
## computeMatrixOperations subset -m input.mat.gz -o output.mat.gz --group "group 1" "group 2" --samples "sample 3" "sample 10"
## 
##  


computeMatrixOperations <- function(..., nthreads=1, params, condaenv) 
{ 
}

