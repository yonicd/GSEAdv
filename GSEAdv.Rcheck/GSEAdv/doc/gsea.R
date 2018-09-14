## ----knitsetup, message=FALSE, warning=FALSE, include=FALSE----------------
knitr::opts_knit$set(root.dir = ".")
knitr::opts_chunk$set(collapse = TRUE, warning = TRUE)
BiocStyle::markdown()
library("BiocStyle")
library("GSEAdv")

## ---- eval = FALSE---------------------------------------------------------
#  devtools::install_github("llrs/GSEAdv")

## ----Bioc-installation, eval = FALSE---------------------------------------
#  ## try http:// if https:// URLs are not supported
#  ## source("https://bioconductor.org/biocLite.R")
#  ## biocLite("GSEAdv")

## ----check-----------------------------------------------------------------
fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)
check(gss)

## ----load------------------------------------------------------------------
library("GSEAdv")

