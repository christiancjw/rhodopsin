## Install phytools
install.packages('phytools')
library('phytools')

##install ape
install.packages('ape')
library('ape')

#Install ggTree through BiocManager
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ggtree")

library('ggtree')

