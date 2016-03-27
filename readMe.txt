Part 1

function pollutantmean calculates the mean of a pollutant across a specified list of monitors. 

takes three arguments: directory, pollutant (sulfate or nitrate) and id (from 1 to 332)

returns the mean of the pollutant across all the monitors ignoring any missing values (NA)


Part 2

function reads directory full of files and reports how many complete cases was in each file 

takes two arguments: directory and id (by default = 1:332)

returns a data frame with ids and number of observations