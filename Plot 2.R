my_data<-read.csv("household_power_consumption.txt", sep=';')

m1<-subset(my_data, Date=="1/2/2007"| Date=="2/2/2007")
m2<- m1[complete.cases(m1),]
m2$DT<-strptime(paste(m1$Date,m1$Time),"%d/%m/%Y %H:%M:%S")

png(filename = "Plot 2.png", width = 480, height = 480)

with(m2,plot(DT,as.numeric(as.character(Global_active_power)),type ="l",xlab="", ylab="Global Active Power (kilowatts)") )


dev.off()
