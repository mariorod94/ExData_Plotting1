# Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data, {
        plot(Global_active_power ~ datetime, type = "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "")
        plot(Voltage ~ datetime, type = "l", 
             ylab = "Voltage (volt)", xlab = "")
        plot(Sub_metering_1 ~ datetime, type = "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "")
        lines(Sub_metering_2 ~ datetime, col = "Red")
        lines(Sub_metering_3 ~ datetime, col = "Blue")
        legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(Global_reactive_power ~ datetime, type = "l", 
             ylab = "Global Rective Power (kilowatts)", xlab = "")
})

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()

