# plot4.R
##########
# Set working directory and read data in to R.
    epc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses=c("character", "character", rep("numeric",7)),
                      na="?")

# Select data pertaining to the required two days and save as a data frame.
epc2 <- epc[epc$Date %in% c("1/2/2007", "2/2/2007"), ]

# Convert Date and Time formats    
epc2$Date <- as.Date(epc2$Date, "%d/%m/%Y")
datetime <- paste(as.character(epc2$Date), epc2$Time, sep=" ")

# Add a new column 'datetime'
epc2$DateTime <- as.POSIXct(datetime)

# The data in the data frame 'epc2' would be used for all 4 plots.
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
