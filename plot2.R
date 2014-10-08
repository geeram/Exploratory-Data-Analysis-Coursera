# plot2.R
##########
# script to produce plot2 and save as png graphic.
# include data required for plotting
source("plotdata.R")

# output png image of the plot
    png("plot2.png", width = 480, height = 480)
    
    plot(epc2$DateTime, epc2$Global_active_power,
         type = "l",
         xlab = "", 
         ylab = "Global Active Power (kilowatts)")
    dev.off()
