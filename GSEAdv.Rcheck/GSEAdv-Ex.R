pkgname <- "GSEAdv"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "GSEAdv-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('GSEAdv')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("calc.nGenes")
### * calc.nGenes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: calc.nGenes
### Title: Estimate the number of genes
### Aliases: calc.nGenes

### ** Examples

calc.nGenes(6)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("calc.nGenes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("calc.nPathways")
### * calc.nPathways

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: calc.nPathways
### Title: Estimate the number of pathways
### Aliases: calc.nPathways

### ** Examples

calc.nPathways(6)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("calc.nPathways", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("check")
### * check

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: check
### Title: Checks a GeneSetCollection
### Aliases: check check,GeneSetCollection-method
###   geneIdType,GeneSetCollection-method
###   collectionType,GeneSetCollection-method

### ** Examples

isTRUE(check(Info))
data(sample.ExpressionSet)
ai <- AnnotationIdentifier(annotation(sample.ExpressionSet))
geneIds <- featureNames(sample.ExpressionSet)[100:109]
gs3 <- GeneSet(geneIds=geneIds, type=ai,
               setName="sample1", setIdentifier="102")
uprotIds <- c("Q9Y6Q1", "A6NJZ7", "Q9BXI6", "Q15035", "A1X283",
              "P55957")
gs4 <- GeneSet(uprotIds, geneIdType=UniprotIdentifier())
gsc <- GeneSetCollection(list(gs3, gs4))
gsc
geneIdType(Info)
collectionType(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("check", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("combnGPP")
### * combnGPP

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: combnGPP
### Title: The combinations of genes per pathways
### Aliases: combnGPP combnGPP,GeneSetCollection-method

### ** Examples

combnGPP(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("combnGPP", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("combnPPG")
### * combnPPG

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: combnPPG
### Title: The combinations of pathways per gene
### Aliases: combnPPG combnPPG,GeneSetCollection-method

### ** Examples

combnPPG(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("combnPPG", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("compare")
### * compare

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: compare
### Title: Pathways equal between two GeneSetCollections
### Aliases: compare

### ** Examples

compare(Info, genesKegg)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("compare", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("completness")
### * completness

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: completness
### Title: Number of possible combinations
### Aliases: completness

### ** Examples

genesPerPathway <- c(2, 4, 5, 8, 5, 8)
completness(genesPerPathway)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("completness", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("condPerGenes")
### * condPerGenes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: condPerGenes
### Title: Conditional probability by genes per pathway
### Aliases: condPerGenes condPerGenes,GeneSetCollection,missing-method
###   condPerGenes,GeneSetCollection,numeric-method

### ** Examples

condPerGenes(Info)
condPerGenes(Info, 2)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("condPerGenes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("condPerPathways")
### * condPerPathways

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: condPerPathways
### Title: Conditional probability by genes per pathway
### Aliases: condPerPathways
###   condPerPathways,GeneSetCollection,missing-method
###   condPerPathways,GeneSetCollection,numeric-method

### ** Examples

condPerPathways(Info)
condPerPathways(Info, 2)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("condPerPathways", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("double.factorial")
### * double.factorial

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: double.factorial
### Title: Double factorial
### Aliases: double.factorial

### ** Examples

double.factorial(4)
double.factorial(5)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("double.factorial", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("drop")
### * drop

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: drop
### Title: Remove from a GeneSetCollection
### Aliases: drop drop,GeneSetCollection,character,character-method
###   drop,GeneSetCollection,missing,character-method
###   drop,GeneSetCollection,character,missing-method
###   drop,GeneSetCollection,numeric,numeric-method
###   drop,GeneSetCollection,missing,numeric-method
###   drop,GeneSetCollection,numeric,missing-method

### ** Examples

drop(Info, gene = "3", pathway = "156580")
drop(Info, pathway = "156580")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("drop", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dropRel")
### * dropRel

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dropRel
### Title: Remove a relationship from a GeneSetCollection
### Aliases: dropRel dropRel,GeneSetCollection,character,character-method

### ** Examples

genesPerPathway(Info)
out <- dropRel(Info, "9", "156580")
genesPerPathway(out)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dropRel", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("duplicatedGenes")
### * duplicatedGenes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: duplicatedGenes
### Title: Duplicated genes
### Aliases: duplicatedGenes duplicatedGenes,GeneSetCollection-method

### ** Examples

duplicatedGenes(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("duplicatedGenes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("duplicatedPathways")
### * duplicatedPathways

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: duplicatedPathways
### Title: Duplicated pathways
### Aliases: duplicatedPathways duplicatedPathways,GeneSetCollection-method

### ** Examples

duplicatedPathways(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("duplicatedPathways", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("estimate.nGenes")
### * estimate.nGenes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: estimate.nGenes
### Title: Estimate range of genes
### Aliases: estimate.nGenes

### ** Examples

estimate.nGenes(c(4, 5, 5, 5, 5, 5))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("estimate.nGenes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("estimate.nPathways")
### * estimate.nPathways

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: estimate.nPathways
### Title: Estimate range of pathways
### Aliases: estimate.nPathways

### ** Examples

estimate.nPathways(c(4, 5, 5, 5, 5, 5))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("estimate.nPathways", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("fromPPG")
### * fromPPG

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: fromPPG
### Title: Simulate GeneSetCollection
### Aliases: fromPPG

### ** Examples

fromPPG(c(2, 2, 3, 2, 2, 2, 2))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("fromPPG", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("genesPerGene")
### * genesPerGene

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: genesPerGene
### Title: Number genes related to a gene
### Aliases: genesPerGene genesPerGene,GeneSetCollection,missing-method
###   genesPerGene,GeneSetCollection,character-method

### ** Examples

genesPerGene(Info)
genesPerGene(Info, unique = FALSE)
 genesPerGene(Info, unique = )
genesPerGene(Info, "10")
genesPerGene(Info, "10", unique = FALSE)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("genesPerGene", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("genesPerPathway")
### * genesPerPathway

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: genesPerPathway
### Title: Genes per pathway
### Aliases: genesPerPathway
###   genesPerPathway,GeneSetCollection,missing-method
###   genesPerPathway,GeneSetCollection,character-method

### ** Examples

genesPerPathway(Info)
genesPerPathway(Info, "1430728")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("genesPerPathway", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("independence")
### * independence

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: independence
### Title: Checks independence of genes
### Aliases: independence independence,GeneSetCollection-method

### ** Examples

fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)
independence(gss)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("independence", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("isolation")
### * isolation

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: isolation
### Title: Checks isolated GeneSets
### Aliases: isolation isolation,GeneSetCollection-method

### ** Examples

fl <- system.file("extdata", "Broad.xml", package = "GSEABase")
gss <- getBroadSets(fl)
# Warning



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("isolation", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modify")
### * modify

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modify
### Title: Modify a relationship
### Aliases: modify modify,GeneSetCollection,character,character-method

### ** Examples

modify(Info, "Gene2", "156580")
modify(Info, c("Gene2", "Gene3"), "156580")
modify(Info, "Gene2", c("156580", "211859"))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modify", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("nested")
### * nested

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: nested
### Title: Pathways included in other pathways
### Aliases: nested nested,GeneSetCollection-method

### ** Examples

nested(Info)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("nested", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("pathwaysPerGene")
### * pathwaysPerGene

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: pathwaysPerGene
### Title: Pathways per gene
### Aliases: pathwaysPerGene
###   pathwaysPerGene,GeneSetCollection,missing-method
###   pathwaysPerGene,GeneSetCollection,character-method

### ** Examples

pathwaysPerGene(Info)
pathwaysPerGene(Info, "10")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("pathwaysPerGene", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("sizeGenes")
### * sizeGenes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: sizeGenes
### Title: Number of genes in pathways of genes
### Aliases: sizeGenes sizeGenes,GeneSetCollection,missing-method
###   sizeGenes,GeneSetCollection,character-method

### ** Examples

sizeGenes(Info)
sizeGenes(Info, "2")
sizeGenes(Info, c("2", "3"))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("sizeGenes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("sizePathways")
### * sizePathways

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: sizePathways
### Title: Number of pathways in genes of pathways
### Aliases: sizePathways sizePathways,GeneSetCollection,missing-method
###   sizePathways,GeneSetCollection,character-method

### ** Examples

sizePathways(Info)
sizePathways(Info, "1430728")
sizePathways(Info, c("1430728", "156580"))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("sizePathways", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
