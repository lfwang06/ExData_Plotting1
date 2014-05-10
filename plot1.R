file<-"E:/Wang/Coursera/Exploratory Data Analysis/household_power_consumption.txt"
power<-read.table(file, header=TRUE,sep=";",na.strings=c("?"))
subpower<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
png(file="E:/Wang/Coursera/ExData_Plotting1/plot1.png")
hist(subpower$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")
dev.off()
