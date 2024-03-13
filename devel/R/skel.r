## Function to generate and populate individual functions with deeptools help information and function template
## run in moana, oreina, conda py3.9
## deeptools version x.y.z

library(openxlsx)
library(reticulate)

x <- read.xlsx('../deepTools.xlsx')

tools <- as.character(x[,1])
names(tools) <- tools

condaenv <- 'py3.9'

## conda activate environment
use_condaenv(condaenv)

## create help content
hc <- lapply(tools,function(tool) system(sprintf('%s -h',tool),intern=TRUE))
hc <- lapply(hc,function(x) paste0('## ',x))

## create function content
fc <- lapply(tools,function(tool) sprintf('\n\n%s <- function(..., nthreads=1, params, condaenv) \n{ \n}\n',tool))
                                   
## write .r files
ac <- hc
for (i in names(ac)) ac[[i]] <- c(hc[[i]],fc[[i]])
for (i in names(ac)) writeLines(ac[[i]],paste0(i,'.r'))

## The End...
