pollutantmean <- function(directory, pollutant, id){
  
  all_monitors <- numeric(0)
  
  for (i in id){
    #print (i)
    file_name <- paste0("00", i, ".csv")
    file_name <- substr(file_name, nchar(file_name) - 6, nchar(file_name))
    file_dir <- paste0(directory, file_name)
    
    df <- read.csv(file_dir)
    
    col_nr <- which(colnames(df) == pollutant)

    for (j in 1:length(df[, col_nr])){
      all_monitors <- append(all_monitors, df[j, col_nr])
    }
    #print (length(all_monitors))
  }
  
  mean(all_monitors, na.rm = TRUE)
}

# test
dir <- # type directory here
print (pollutantmean(dir, "sulfate", 1:10))
print (pollutantmean(dir, "nitrate", 70:72))
print (pollutantmean(dir, "nitrate", 23))
