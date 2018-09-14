## ----knitsetup, message=FALSE, warning=FALSE, include=FALSE----------------
knitr::opts_knit$set(root.dir = ".")
knitr::opts_chunk$set(collapse = TRUE, warning = TRUE)
BiocStyle::markdown()
library("BiocStyle")
library("GSEAdv")

## ----load------------------------------------------------------------------
fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)
gss

## ---- summary--------------------------------------------------------------
summary(gss)

## ----gpp-independence------------------------------------------------------
gpp <- genesPerPathway(gss)
gpp

## ----ppg-------------------------------------------------------------------
ppg <- pathwaysPerGene(gss)
head(ppg)

## ----duplicate-------------------------------------------------------------
duplicatedGenes(gss)
duplicatedPathways(gss)

## ----nested----------------------------------------------------------------
nested(Info)

## --------------------------------------------------------------------------
pathway(gss)
head(gene(gss)) # To avoid a long table

## ----sessionInfo, echo=FALSE-----------------------------------------------
sessionInfo()

