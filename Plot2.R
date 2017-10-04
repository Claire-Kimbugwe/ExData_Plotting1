
library(data.table)
Data <- fread("household_power_consumption.txt", sep = ";" , stringsAsFactors = F, 
              na.strings = "?")
str(Data) #look at the structure of Data table
names(Data) #look at column names

#subset the data
Needed <- subset(Data, Date %in% c( "1/2/2007" ,"2/2/2007"))
Needed$Date <- as.Date(Needed$Date, "%d/%m/%Y")
head(Needed)#Look at first 5 rows
 #SetTime

SetTime <-strptime(paste(Needed$Date, Needed$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(Needed, SetTime)
head(FinalData) #look at 5 rows
str(FinalData)# structure of Dataset
plot(FinalData$SetTime, FinalData$Global_active_power, xlab = " ", 
     type = "l",ylab = "Global Active Power (kilowatts)")

#save Plot
 dev.copy(png, "Plot2.png", height =480, width = 480)
 dev.off()
 

