data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

png("plot2.png",width=480,height=480)
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
