
data <- read.table("power.txt", header = T, sep = ";", na.strings = "?") ##Reads in data
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")   ##Combines date and time into a proper class
datasub <- data[66637:69516,]                                            ##Subsets correct interval of time

png("Plot1.png", width = 480, height = 480)                              ##Set plot device
hist(datasub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red") ##Create Plot
dev.off() ## turn off plot device
