SetTime <-strptime(paste(Needed$Date, Needed$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(Needed, SetTime)
head(FinalData) #look at 5 rows
str(FinalData)# structure of Dataset
plot(FinalData$SetTime, FinalData$Global_active_power, xlab = " ", 
     type = "l",ylab = "Global Active Power (kilowatts)")

#save Plot
 dev.copy(png, "Plot2.png", height =480, width = 480)
 dev.off()
 
