## usage: computeMatrix [-h] [--version]  ...

## This tool calculates scores per genome regions and prepares an intermediate file that can be used with ``plotHeatmap`` and ``plotProfiles``.
## Typically, the genome regions are genes, but any other regions defined in a BED file can be used.
## computeMatrix accepts multiple score files (bigWig format) and multiple regions files (BED format).
## This tool can also be used to filter and sort regions according
## to their score.

## To learn more about the specific parameters, type:

## $ computeMatrix reference-point --help or

## $ computeMatrix scale-regions --help

## optional arguments:
##   -h, --help       show this help message and exit
##   --version        show program's version number and exit

## Commands:
  
##     scale-regions  In the scale-regions mode, all regions in the BED file are
##                    stretched or shrunken to the length (in bases) indicated by
##                    the user.
##     reference-point
##                    Reference-point refers to a position within a BED region
##                    (e.g., the starting point). In this mode, only those
##                    genomicpositions before (upstream) and/or after
##                    (downstream) of the reference point will be plotted.

## An example usage is:
##   computeMatrix reference-point -S <bigwig file(s)> -R <bed file(s)> -b 1000
 
