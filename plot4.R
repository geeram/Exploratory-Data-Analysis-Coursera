# plot4.R
##########
# script to produce plot4 and save as png graphic.
# include data required for plotting
source("plotdata.R")

png("plot4.png", width = 480, height = 480)

# Lay out 4 plots in one page
par(mfrow = c(2, 2))

# Top Left plot
plot(epc2$DateTime, epc2$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power"
     )

# Top Right plot
plot(epc2$DateTime, epc2$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage"
     )

# Bottom Left plot
plot(epc2$DateTime, epc2$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "",
     ylab = "Energy sub metering"
     )
lines(epc2$DateTime, epc2$Sub_metering_2, col = "red")
lines(epc2$DateTime, epc2$Sub_metering_3, col = "blue")

legend("topright",
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1
       )

# Bottom Right plot
plot(epc2$DateTime, epc2$Global_reactive_power,
     type = "l",
     col = "black",
     xlab = "datetime",
     ylab = "Global reactive power"
     )

dev.off()
