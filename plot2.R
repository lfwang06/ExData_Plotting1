file<-"E:/Wang/Coursera/Exploratory Data Analysis/household_power_consumption.txt"
power<-read.table(file, header=TRUE,sep=";",na.strings=c("?"))
subpower<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-as.POSIXct(paste(subpower$Date,subpower$Time),format="%d/%m/%Y %H:%M:%S")
newpower<-cbind(datetime,subpower)
png(file="E:/Wang/Coursera/ExData_Plotting1/plot2.png")
with(newpower, plot(datetime,Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()
