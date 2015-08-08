##
## Exploratory Data Analysis - Course Project 1
##
## Plot 4 (plot4.R)
##

source("./plot_common.R")

dt <- readFile()

setupPlot("plot4.png")

par(mfrow=c(2,2))

## Plot 1
plot(dt$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (killowatts)", 
     xlab = "",
     xaxt = "n")

axis(1, 
     at=c(1,length(dt$Date)/2,length(dt$Date)), 
     labels=c(weekdays(min(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date+1), abbreviate = TRUE)))

## Plot 2
#par(lab=c(c(3,5,0)))
plot(dt$Voltage, 
     type = "l",
     ylab = "Voltage", 
     xlab = "datetime",
     xaxt = "n")

axis(1, 
     at=c(1,length(dt$Date)/2,length(dt$Date)), 
     labels=c(weekdays(min(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date)  , abbreviate = TRUE),
              weekdays(max(dt$Date+1), abbreviate = TRUE)))

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

legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), 
       col=c("black","red","blue"),
       text.col=c("black","black","black"))

## Plot 4
plot(dt$Global_reactive_power, 
     type = "l",
     ylab = "Voltage", 
     xlab = "datetime",
     xaxt = "n")

axis(1, 
     at=c(1,length(dt$Date)/2,length(dt$Date)), 
     labels=c(weekdays(min(dt$Date), abbreviate = TRUE),
              weekdays(max(dt$Date)  , abbreviate = TRUE),
              weekdays(max(dt$Date+1), abbreviate = TRUE)))
dev.off()