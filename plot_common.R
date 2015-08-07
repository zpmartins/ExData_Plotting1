##
## Exploratory Data Analysis - Course Project 1
##
## Common Functions (plot_common.R)
##
library(dplyr)
library(lubridate)

dataFileName <- "household_power_consumption.txt"

readFile <- function() {
  
  cData <- read.delim(dataFileName, sep=";", nrows = 1000)
  classes <- sapply(cData, class)
  
  cData <- read.delim(dataFileName, sep=";", colClasses = classes, na.strings = "?")
  cData <- tbl_df( cData )
  cData
  cData <- cData %>%
    mutate(Date = as.Date(Date,"%d/%m/%Y")) %>%
    filter(Date == as.Date("2007/02/01","%Y/%m/%d") |
           Date == as.Date("2007/02/02","%Y/%m/%d"))
  cData
}

setupPlot <- function(fname) {
  if(file.exists(fname)) {
    file.remove(fname)
  }
  png(filename = fname)
  par(family="Arial Black")
}