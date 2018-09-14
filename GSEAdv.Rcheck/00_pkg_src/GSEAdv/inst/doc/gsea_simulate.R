## ----knitsetup, message=FALSE, warning=FALSE, include=FALSE----------------
knitr::opts_knit$set(root.dir = ".")
knitr::opts_chunk$set(collapse = TRUE, warning = TRUE)
BiocStyle::markdown()
library("BiocStyle")
library("GSEAdv")
fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)

## --------------------------------------------------------------------------
add(gss, gene = c("ha", "ZNF474", "CCDC100"), pathway = "new")
add(gss, gene = "ZNF474", pathway = c("chr16q24", "chr5q23"))

## --------------------------------------------------------------------------
# Remove a pathway
drop(gss, pathway = "chr5q23")
drop(gss, pathway = 1) # 1 random pathway
drop(gss, pathway = c("chr5q23", "chr16q24")) 
# Remove some genes
drop(gss, gene = c("AFG3L1", "ANKRD11")) 
drop(gss, gene = 5) # 5 random genes
# Remove both, genes and pathways
drop(gss, pathway = "chr5q23", gene = c("AFG3L1", "ANKRD11"))
drop(Info, pathway = "1430728", gene = c("10", "9"))

## ----fromGPP, eval=FALSE, include=FALSE------------------------------------
#  fromGPP(genesPerPathway(Info))
#  fromPPG(pathwaysPerGene(Info))

## ----from_n, eval=FALSE, include=FALSE-------------------------------------
#  fromPPG_nPathways(pathwaysPerGene(Info), nPathways(Info))
#  fromGPP_nGenes(genesPerPathway(Info), nGenes(Info))

## ----sessionInfo, echo=FALSE-----------------------------------------------
sessionInfo()

