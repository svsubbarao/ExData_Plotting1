## read the data from the file
dataR <- read.csv("household_power_consumption.txt" ,header=T,sep=";",stringsAsFactors=F, na.strings="?",colClasses=c("character", "character", "numeric", "numeric", "numeric","numeric","numeric", "numeric", "numeric"))

## subset the data from large data set
dataR <- dataR[dataR$Date %in% c("1/2/2007","2/2/2007") ,]

## create the png file 
png(filename="plot1.png", width=480, height=480)

## draw the histogram on to the file
hist(dataR$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()