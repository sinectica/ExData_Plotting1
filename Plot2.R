### Plot 2

setwd("/Volumes/Macintosh HD/Exploratory analysis/ExData_Plotting1")
png("Plot2.png", width=480, height=480)

hpd <- read.csv("household_power_consumption.txt", header=TRUE, sep=';',
                na.strings="?", nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="",
                quote='\"')

hpd$Date <- as.Date(hpd$Date, format="%d/%m/%Y")

hpd_filtered <- subset(hpd, Date == "2007-02-01" | Date == "2007-02-02")
date_time <- paste(as.Date(hpd_filtered$Date), hpd_filtered$Time)
hpd_filtered$Date <- as.POSIXct(date_time)


with(hpd_filtered,plot(Global_active_power ~ Date, type="l", ylab="Global Active Power (kW)"))

dev.off()