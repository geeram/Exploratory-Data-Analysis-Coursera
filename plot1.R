# plot1.R
##########
# script to produce plot1 and save as png graphic.
# include data required for plotting
source("plotdata.R")

# output png image of the plot
    png("plot1.png", width = 480, height = 480)
    
    hist(epc2$Global_active_power, 
         main="Global Active Power", 
         xlab="Global Active Power (kilowatts)", 
         ylab="Frequency", 
         col="red")
    dev.off()
