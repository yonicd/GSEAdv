## ----knitsetup, message=FALSE, warning=FALSE, include=FALSE----------------
knitr::opts_knit$set(root.dir = ".")
knitr::opts_chunk$set(collapse = TRUE, warning = TRUE)
BiocStyle::markdown()
library("BiocStyle")
library("GSEAdv")
fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)

## ----sizes-----------------------------------------------------------------
sizeGenes(Info)
sizePathways(Info)

## ----sizesPer--------------------------------------------------------------
sizesPerGene(Info)
sizesPerPathway(Info)

## ----nested----------------------------------------------------------------
nested(Info)

## --------------------------------------------------------------------------
duplicatedPathways(Info)

## --------------------------------------------------------------------------
duplicatedGenes(Info)


## ----isolation-------------------------------------------------------------
isolation(gss)
isolation(Info)

## ----condPer---------------------------------------------------------------
condPerGenes(Info)
condPerPathways(Info)

## ----plot, fig.cap="Regular figure. The first sentence of the figure caption is automatically emphasized to serve as figure title.", echo=FALSE----
plot(cars)

## ----small, fig.cap="Small figure. A plot produced by a code chunk with option `fig.small = TRUE`.", fig.small=TRUE, echo=FALSE----
plot(cars)

## ----wide, fig.cap="Wide figure. A plot produced by a code chunk with option `fig.wide = TRUE`.", fig.wide=TRUE, echo=FALSE----
plot(cars)

## ----sessionInfo, echo=FALSE-----------------------------------------------
sessionInfo()

