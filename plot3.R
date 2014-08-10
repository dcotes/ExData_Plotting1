data <- read.table("power.txt", header = T, sep = ";", na.strings = "?") ##Reads in data
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")   ##Combines date and time into a proper class
datasub <- data[66637:69516,]                                            ##Subsets correct interval of time

plot(datasub$Date, datasub$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy Sub Metering")  ##Creates base plot
lines(datasub$Date, datasub$Sub_metering_2, type = "l", col = "red")                              ##Adds a line
lines(datasub$Date, datasub$Sub_metering_3, type = "l", col = "blue")                             ##Adds a line

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1,text.width = 40000, cex = 0.6)  ##Creates legend
