# Plot 3
with(data, {
        plot(Sub_metering_1 ~ datetime, type = "l", xlab = "",
             ylab = "Global Active Power (kilowatts")
        lines(Sub_metering_2 ~ datetime, col="Red")
        lines(Sub_metering_3 ~ datetime,col = "Blue")
})

legend("topright", col = c("black", "red", "blue"), lwd = c(1, 1, 1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)


dev.copy(png, "plot3.png", width=480, height=480)
dev.off()
