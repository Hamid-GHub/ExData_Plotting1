my_data<-read.csv("household_power_consumption.txt", sep=';')

m1<-subset(my_data, Date=="1/2/2007"| Date=="2/2/2007")
m2<- m1[complete.cases(m1),]
png(filename = "Plot 1.png", width = 480, height = 480)
hist(as.numeric(as.character(m2$Global_active_power)),col="red",xlab = "Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()         


