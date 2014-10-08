# plot3.R
##########
# script to produce plot3 and save as png graphic.
# include data required for plotting
source("plotdata.R")

# output png image of the plot
    png("plot3.png", width = 480, height = 480)

plot(epc2$DateTime, epc2$Sub_metering_1,
         type = "l",
         col = 'black',
         xlab = "", 
         ylab = "Energy sub metering")
    lines(epc2$DateTime, epc2$Sub_metering_2, col = 'red')
    lines(epc2$DateTime, epc2$Sub_metering_3, col = 'blue')

legend("topright", 
           col = c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lwd = 1)

dev.off()
    