source("../complete.R")

corr <- function(directory, treshold = 0){
    count <- 0
    correlations <- numeric(0)
    for (i in list.files(directory)){
        count = count + 1
        
        df <- read.csv(i)
        
        comp_cases_nr <- complete(directory, count)$nobs
        
        if (comp_cases_nr >= treshold){
            df <- subset(df, complete.cases(df) == TRUE)
            c <- cor(df$sulfate, df$nitrate)
            correlations <- append(correlations, c)
        }
    }
    correlations
}

# test
# dir <- type directory here
cr <- corr(dir, 150)
round(head(cr), 5)
cr <- corr(dir, 400)
round(head(cr), 5)
cr <- corr(dir, 5000)
round(head(cr), 5)
summary(cr)
