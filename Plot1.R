#Loading the data - Household_Power_Consumption.txt for Plot #1

#Dataset: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# Getting date and time values
datetime <- strptime(paste(data$Date,as.character(data$Time)),"%Y-%m-%d %H:%M:%S")

# Generating Plot 1
hist(as.numeric(as.character(data$Global_active_power)),
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
