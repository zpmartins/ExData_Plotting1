##
## Exploratory Data Analysis - Course Project 1
##
## Plot 2 (plot2.R)
##

source("./plot_common.R")

dt <- readFile()

setupPlot("plot2.png")

plot(dt$Global_intensity, 
     type="l",
     ylab = "Global Active Power (killowatts)", 
     xlab = "",
     xaxt = "n")

axis(1, 
     at=c(1,length(dt$Date)/2,length(dt$Date)), 
     labels=c(weekdays(min(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date)  , abbreviate = TRUE),
              weekdays(max(dt$Date+1), abbreviate = TRUE)))

dev.off()
