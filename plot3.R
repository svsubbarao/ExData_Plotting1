## read the data from the file
dataR <- read.csv("household_power_consumption.txt" ,header=T,sep=";",stringsAsFactors=F, na.strings="?",colClasses=c("character", "character", "numeric", "numeric", "numeric","numeric","numeric", "numeric", "numeric"))

## subset the data from large data set
dataR <- dataR[dataR$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(dataR$Date, dataR$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## create the png file 
png(filename="plot3.png", width=480, height=480)

## draw the graph on to the file
plot(datetime, dataR$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, dataR$Sub_metering_2, type="l", col="red")
lines(datetime, dataR$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()