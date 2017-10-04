
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(FinalData, {
  plot(Global_active_power~SetTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~SetTime, type="l", 
       ylab="Voltage (volt)", xlab="datetime")
  plot(Sub_metering_1~SetTime, type="l", 
       ylab="Energy Sub Melting", xlab="")
  lines(Sub_metering_2~SetTime,col='Red')
  lines(Sub_metering_3~SetTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~SetTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="datetime")
})

#save grraph as png
dev.copy(png, "Plot4.png", height =480, width =480)
dev.off()
