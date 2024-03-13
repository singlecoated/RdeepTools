## usage: plotProfile -m matrix.gz
## help: plotProfile -h / plotProfile --help
## 
## This tool creates a profile plot for scores over sets of genomic regions. Typically, these regions are genes, but any other regions defined in BED will work. A matrix generated by
## computeMatrix is required.
## 
## Required arguments:
##   --matrixFile MATRIXFILE, -m MATRIXFILE
##                         Matrix file from the computeMatrix tool. (default: None)
##   --outFileName OUTFILENAME, -out OUTFILENAME, -o OUTFILENAME
##                         File name to save the image to. The file ending will be used to determine the image format. The available options are: "png", "eps", "pdf" and "svg", e.g.,
##                         MyHeatmap.png. (default: None)
## 
## Output options:
##   --outFileSortedRegions FILE
##                         File name into which the regions are saved after skipping zeros or min/max threshold values. The order of the regions in the file follows the sorting order
##                         selected. This is useful, for example, to generate other heatmaps while keeping the sorting of the first heatmap. Example: Heatmap1sortedRegions.bed (default:
##                         None)
##   --outFileNameData OUTFILENAMEDATA
##                         File name to save the data underlying data for the average profile, e.g. myProfile.tab. (default: None)
##   --dpi DPI             Set the DPI to save the figure. (default: 200)
## 
## Clustering arguments:
##   --kmeans KMEANS       Number of clusters to compute. When this option is set, the matrix is split into clusters using the k-means algorithm. Only works for data that is not grouped,
##                         otherwise only the first group will be clustered. If more specific clustering methods are required, then save the underlying matrix and run the clustering using
##                         other software. The plotting of the clustering may fail with an error if a cluster has very few members compared to the total number or regions. (default: None)
##   --hclust HCLUST       Number of clusters to compute. When this option is set, then the matrix is split into clusters using the hierarchical clustering algorithm, using "ward linkage".
##                         Only works for data that is not grouped, otherwise only the first group will be clustered. --hclust could be very slow if you have >1000 regions. In those cases,
##                         you might prefer --kmeans or if more clustering methods are required you can save the underlying matrix and run the clustering using other software. The plotting
##                         of the clustering may fail with an error if a cluster has very few members compared to the total number of regions. (default: None)
##   --silhouette          Compute the silhouette score for regions. This is only applicable if clustering has been performed. The silhouette score is a measure of how similar a region is
##                         to other regions in the same cluster as opposed to those in other clusters. It will be reported in the final column of the BED file with regions. The silhouette
##                         evaluation can be very slow when you have morethan 100 000 regions. (default: False)
## 
## Optional arguments:
##   --help, -h            show this help message and exit
##   --version             show program's version number and exit
##   --averageType {mean,median,min,max,std,sum}
##                         The type of statistic that should be used for the profile. The options are: "mean", "median", "min", "max", "sum" and "std". (default: mean)
##   --plotHeight PLOTHEIGHT
##                         Plot height in cm. (default: 7)
##   --plotWidth PLOTWIDTH
##                         Plot width in cm. The minimum value is 1 cm. (default: 11)
##   --plotType {lines,fill,se,std,overlapped_lines,heatmap}
##                         "lines" will plot the profile line based on the average type selected. "fill" fills the region between zero and the profile curve. The fill in color is semi
##                         transparent to distinguish different profiles. "se" and "std" color the region between the profile and the standard error or standard deviation of the data. As
##                         in the case of fill, a semi-transparent color is used. "overlapped_lines" plots each region's value, one on top of the other. "heatmap" plots a summary heatmap.
##                         (default: lines)
##   --colors COLORS [COLORS ...]
##                         List of colors to use for the plotted lines (N.B., not applicable to '--plotType overlapped_lines'). Color names and html hex strings (e.g., #eeff22) are
##                         accepted. The color names should be space separated. For example, --colors red blue green (default: None)
##   --numPlotsPerRow NUMPLOTSPERROW
##                         Number of plots per row (default: 8)
##   --clusterUsingSamples CLUSTERUSINGSAMPLES [CLUSTERUSINGSAMPLES ...]
##                         List of sample numbers (order as in matrix), that are used for clustering by --kmeans or --hclust if not given, all samples are taken into account for
##                         clustering. Example: --ClusterUsingSamples 1 3 (default: None)
##   --startLabel STARTLABEL
##                         [only for scale-regions mode] Label shown in the plot for the start of the region. Default is TSS (transcription start site), but could be changed to anything,
##                         e.g. "peak start". Same for the --endLabel option. See below. (default: TSS)
##   --endLabel ENDLABEL   [only for scale-regions mode] Label shown in the plot for the region end. Default is TES (transcription end site). (default: TES)
##   --refPointLabel REFPOINTLABEL
##                         [only for reference-point mode] Label shown in the plot for the reference-point. Default is the same as the reference point selected (e.g. TSS), but could be
##                         anything, e.g. "peak start". (default: None)
##   --labelRotation LABEL_ROTATION
##                         Rotation of the X-axis labels in degrees. The default is 0, positive values denote a counter-clockwise rotation. (default: 0.0)
##   --regionsLabel REGIONSLABEL [REGIONSLABEL ...], -z REGIONSLABEL [REGIONSLABEL ...]
##                         Labels for the regions plotted in the heatmap. If more than one region is being plotted, a list of labels separated by spaces is required. If a label itself
##                         contains a space, then quotes are needed. For example, --regionsLabel label_1, "label 2". (default: None)
##   --samplesLabel SAMPLESLABEL [SAMPLESLABEL ...]
##                         Labels for the samples plotted. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label
##                         itselfcontains a space E.g. --samplesLabel label-1 "label 2" (default: None)
##   --plotTitle PLOTTITLE, -T PLOTTITLE
##                         Title of the plot, to be printed on top of the generated image. Leave blank for no title. (default: )
##   --yAxisLabel YAXISLABEL, -y YAXISLABEL
##                         Y-axis label for the top panel. (default: )
##   --yMin YMIN [YMIN ...]
##                         Minimum value for the Y-axis. Multiple values, separated by spaces can be set for each profile. If the number of yMin values is smaller thanthe number of plots,
##                         the values are recycled. (default: None)
##   --yMax YMAX [YMAX ...]
##                         Maximum value for the Y-axis. Multiple values, separated by spaces can be set for each profile. If the number of yMin values is smaller thanthe number of plots,
##                         the values are recycled. (default: None)
##   --legendLocation {best,upper-right,upper-left,upper-center,lower-left,lower-right,lower-center,center,center-left,center-right,none}
##                         Location for the legend in the summary plot. Note that "none" does not work for the profiler. (default: best)
##   --perGroup            The default is to plot all groups of regions by sample. Using this option instead plots all samples by group of regions. Note that this is only useful if you
##                         have multiple groups of regions. by sample rather than group. (default: False)
##   --plotFileFormat      Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: "png", "eps", "pdf", "plotly" and
##                         "svg" (default: None)
##   --verbose             If set, warning messages and additional information are given. (default: False)
## 
## An example usage is: plotProfile -m matrix.gz


plotProfile <- function(..., nthreads=1, params, condaenv) 
{ 
}
