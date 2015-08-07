##
## Exploratory Data Analysis - Course Project 1
##
## Plot 3 (plot3.R)
##

source("./plot_common.R")

dt <- readFile()

setupPlot("plot3.png")

par(lab=c(c(1,1,0)))

plot(dt$Sub_metering_1, 
     type="l",
     ylab = "Energy sub metering", 
     xlab = "",
     xaxt = "n",
     col="black")

lines(dt$Sub_metering_2,
      col="red")

lines(dt$Sub_metering_3,
      col="blue")

axis(1, 
     at=c(1,length(dt$Date)/2,length(dt$Date)), 
     labels=c(weekdays(min(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date)  , abbreviate = TRUE),
              weekdays(max(dt$Date+1), abbreviate = TRUE)))

mGI <- max(dt$Sub_metering_1,dt$Sub_metering_2,dt$Sub_metering_3)
axis(2, 
     at=c(0, mGI/4, mGI/2, mGI/4*3), 
     labels=seq(0,30,10))

legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), 
       col=c("black","red","blue"),
       text.col=c("black","black","black"))

dev.off()
