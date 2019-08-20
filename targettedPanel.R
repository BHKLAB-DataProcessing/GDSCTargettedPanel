library(PharmacoGxPrivate)
library(downloader)
options(stringsAsFactors=FALSE)


remoteFile <- "ftp://ftp.sanger.ac.uk/pub4/cancerrxgene/releases/release-5.0/gdsc_mutation_w5.csv"


require(downloader)
badchars <- "[\xb5]|[]|[,]|[;]|[:]|[-]|[+]|[*]|[%]|[$]|[#]|[{]|[}]|[[]|[]]|[|]|[\\^]|[/]|[\\]|[.]|[_]|[ ]"
sessionInfo()

my.dir <- "/pfs/out" 


## download sample information
message("Download mutation info")
myfn <- file.path(my.dir, "gdsc_mutation_w5.csv")

dwl.status <- download.file(url=remoteFile, destfile=myfn, quiet=TRUE)
if(dwl.status != 0) { stop("Download failed, please rerun the pipeline!") }





