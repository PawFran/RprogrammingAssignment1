complete <- function(directory, id = 1:332){
  id_col = numeric(0)
  nobs_col = numeric(0)
  
  for (i in id){
    file_name <- paste0("00", i, ".csv")
    file_name <- substr(file_name, nchar(file_name) - 6, nchar(file_name))
    file_dir <- paste0(directory, file_name)
    
    df <- read.csv(file_dir)
    
    complete_nr <- nrow((subset(df, complete.cases(df) == TRUE)))
    
    id_col <- append(id_col, i)
    nobs_col <- append(nobs_col, complete_nr)
    
    result <- data.frame(id_col, nobs_col)
    colnames(result) <- c("id", "nobs")
  }
  
  result
}

# test
# type directory here
complete(dir, 1)
complete(dir, c(2, 4, 8, 10, 12))
complete(dir, 30:25)
complete(dir, 3)


