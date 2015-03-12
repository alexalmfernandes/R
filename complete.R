complete <- function(directory, id = 1:332) {
    df <- data.frame(id=numeric(1), nobs=numeric(1))
    j <- 1
    for (i in id) {
        file <- paste(directory,"/", formatC(i,width=3, flag="0"), ".csv", sep="")
        p <- read.csv(file)
        ok <- complete.cases(p)
        df[j, ] <- c(i,  length(p$sulfate[ok]))
        j <- j+1
    }
    df
}
