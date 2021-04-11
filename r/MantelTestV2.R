install.packages("ade4")
library(ade4)
install.packages("Distance")
library(Distance)

Sys.time()
jaccard2 <- read.csv("data\\distanceMatricesJacksonDatabindV112\\dm_jaccard.csv", header = FALSE)
dij3 <- with(jaccard2, structure(Distance,
                           Size = length(nams),
                           Labels = nams,
                           Diag = FALSE,
                           Upper = FALSE,
                           method = "user",
                           class = "dist"))
ncd2 <- read.csv("data\\distanceMatricesJacksonDatabindV112\\dm_NCD.csv", header = FALSE)
dij4 <- with(ncd2, structure(Distance,
                                 Size = length(nams),
                                 Labels = nams,
                                 Diag = FALSE,
                                 Upper = FALSE,
                                 method = "user",
                                 class = "dist"))
# df3 <- jaccard2[jaccard2[,1] %in% jaccard[,2],]
testMantel2 = mantel.rtest(dij3, dij4, nrepet = 99)
Sys.time()
testMantel2