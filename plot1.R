# Reading and subsetting data
data <- read.table(
        "household_power_consumption.txt",
        header = TRUE, na.strings = "?", sep = ";",
        colClasses = c(
                "character", "character", "numeric", "numeric", "numeric",
                "numeric", "numeric", "numeric", "numeric"
        )
)
data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

# Plot 1
hist(data$Global_active_power, col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowats)"
     )

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
