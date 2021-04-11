# Appraoch after https://jkzorz.github.io/2019/07/08/mantel-test.html
library(vegan)
install.packages("geosphere")
library(geosphere)
library(parallel)


Sys.time()
jaccard <- read.csv("data\\distanceMatricesCompressV1\\dm_jaccard.csv", header = FALSE)
ncd <- read.csv("data\\distanceMatricesCompressV1\\dm_NCD.csv", header = FALSE)
# df3 <- jaccard2[jaccard2[,1] %in% jaccard[,2],]
testMantel = mantel(jaccard, ncd, method = "spearman", permutations = 99, na.rm = TRUE, parallel = 4)
Sys.time()
testMantel