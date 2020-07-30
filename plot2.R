# Time series
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- data[complete.cases(data), ]
datetime <- paste(data$Date, data$Time)
datetime <- setNames(datetime, "DateTime")
data <- data[, !(names(data) %in% c("Date","Time"))]
data <- cbind(datetime, data)
data$datetime <- as.POSIXct(datetime)


# Plot 2
plot(data$Global_active_power ~ data$datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab=""
)

dev.copy(png, "plot2.png", width=480, height=480)
dev.off()
