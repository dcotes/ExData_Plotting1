data <- read.table("power.txt", header = T, sep = ";", na.strings = "?") ##Reads in data
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")   ##Combines date and time into a proper class
datasub <- data[66637:69516,]                                            ##Subsets correct interval of time


plot(datasub$Date, datasub$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)") ##Plots GAP vs Date
