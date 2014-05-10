file<-"E:/Wang/Coursera/Exploratory Data Analysis/household_power_consumption.txt"
power<-read.table(file, header=TRUE,sep=";",na.strings=c("?"))
subpower<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-as.POSIXct(paste(subpower$Date,subpower$Time),format="%d/%m/%Y %H:%M:%S")
newpower<-cbind(datetime,subpower)
png(file="E:/Wang/Coursera/ExData_Plotting1/plot3.png")
with(newpower,plot(datetime, Sub_metering_1, type="n",xlab="",ylab="Energy sub metering"))
points(newpower$datetime,newpower$Sub_metering_1,type="l")
points(newpower$datetime,newpower$Sub_metering_2,type="l",col="red")
points(newpower$datetime,newpower$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
