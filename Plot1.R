### Plot 1

setwd("/Volumes/Macintosh HD/Exploratory analysis/ExData_Plotting1")
png("Plot1.png", width=480, height=480)

hpd <- read.csv("household_power_consumption.txt", header=TRUE, sep=';',
                na.strings="?", nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="",
                quote='\"')

hpd$Date <- as.Date(hpd$Date, format="%d/%m/%Y")

hpd_filtered <- subset(hpd, Date == "2007-02-01" | Date == "2007-02-02")

hist(hpd_filtered$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kW)", ylab="Frequency", col="Red")

dev.off()
