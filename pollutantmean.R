pollutantmean <- function(directory, pollutant, id = 1:332) {
    p.pollutant <- ""
    for (i in id) {
        file <- paste(directory,"/", formatC(i,width=3, flag="0"), ".csv", sep="")
        p <- read.csv(file)
        p.pollutant <- c(p.pollutant, p[, pollutant])
    }
    mean(as.numeric(p.pollutant), na.rm=TRUE)
}
