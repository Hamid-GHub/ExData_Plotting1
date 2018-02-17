my_data<-read.csv("household_power_consumption.txt", sep=';')

m1<-subset(my_data, Date=="1/2/2007"| Date=="2/2/2007")
m2<- m1[complete.cases(m1),]
m2$DT<-strptime(paste(m1$Date,m1$Time),"%d/%m/%Y %H:%M:%S")

png(filename = "Plot 3.png", width = 480, height = 480)
with(m2,plot(DT,as.numeric(as.character(Sub_metering_1)),type="l",xlab="", ylab="Energy sub metering" ) ) 
with(m2,lines(DT,as.numeric(as.character(Sub_metering_2)), type="l",col="red" ) )      
with(m2,lines(DT,as.numeric(as.character(Sub_metering_3)),type="l",col="blue" ) )      
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))

dev.off()