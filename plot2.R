file <- "household_power_consumption.txt"
epower <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset_epower <- epower[epower$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subset_epower$Date, subset_epower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset_epower$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
