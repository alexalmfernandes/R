corr <- function(directory, threshold = 0) {
  source ("~/Coursera/R/complete.R")
  
  completesets <- complete ("specdata")
  id <- completesets$id[completesets$nobs>threshold]
  corr <- NULL

  j <- 1
  for (i in id){
    file <- paste(directory,"/", formatC(i, width=3, flag="0"), ".csv", sep="")
    p <- read.csv(file)
    comp <- complete.cases (p)

    corr[j] <- cor(p$sulfate[comp], p$nitrate[comp])
    j <- j+1
  }
  corr
}