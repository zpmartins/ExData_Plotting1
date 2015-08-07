##
## Exploratory Data Analysis - Course Project 1
##
## Plot 1 (plot1.R)
##

source("./plot_common.R")

dt <- readFile()

setupPlot("plot1.png")

hist(dt$Global_active_power, 
     main="Global Active Power", 
     xlab = "Global Active Power (killowatts)", 
     col=rgb(1,0,0))

dev.off()

