data <- read.table("power.txt", header = T, sep = ";", na.strings = "?") ##Reads in data
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")   ##Combines date and time into a proper class
datasub <- data[66637:69516,]                                            ##Subsets correct interval of time

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1)) ##Creates multiple plot matrix and sets margins
plot(datasub$Date, datasub$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power") ##Plot 1
plot(datasub$Date, datasub$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")                  ##Plot 2
{plot(datasub$Date, datasub$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy Sub Metering")  ##Plot 3 Base
 lines(datasub$Date, datasub$Sub_metering_2, type = "l", col = "red")                              ##Adds a line
 lines(datasub$Date, datasub$Sub_metering_3, type = "l", col = "blue")                             ##Adds a line
 legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, text.width = 79000, bty = "n", cex = 0.7)  ##Creates legend
}
plot(datasub$Date, datasub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power") ##Plot 4


