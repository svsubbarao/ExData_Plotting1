
## read the data from the file
dataR <- read.csv("household_power_consumption.txt" ,header=T,sep=";",stringsAsFactors=F, na.strings="?",colClasses=c("character", "character", "numeric", "numeric", "numeric","numeric","numeric", "numeric", "numeric"))

## subset the data from large data set
dataR <- dataR[dataR$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(dataR$Date, dataR$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## create the png file 
png(filename="plot2.png", width=480, height=480)

## draw the graph on to the file
plot(datetime, dataR$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()