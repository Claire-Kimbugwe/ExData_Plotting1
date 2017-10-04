
Dfile <- file("C:/Users/Claire/Dropbox/Coursera/Data/household_power_consumption.txt")

Needed <- read.table(text = grep("^[1,2]/2/2007", readLines(Dfile), value = TRUE), sep = ";" , stringsAsFactors = F, 
                     na.strings = "?")
head(Needed) #look at the first 5 rows
tail(Needed)#look ata the last 5 rows
str(Needed)#look at the table structure
summary(Needed$Global_active_power) #statistics of the column

#PLOT 1
hist(Needed$Global_active_power, col = "red", xlab = "Global Active Power(Kilowatts)", 
     main = ("Global Active Power"))

#save the Grapy
dev.copy(png , "Plot1.png", width=480, height =480)
dev.off()
