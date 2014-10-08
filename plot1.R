# plot1.R
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

# output png image of the plot
    png("plot1.png", width = 480, height = 480)
    
    hist(epc2$Global_active_power, 
         main="Global Active Power", 
         xlab="Global Active Power (kilowatts)", 
         ylab="Frequency", 
         col="red")
    dev.off()
