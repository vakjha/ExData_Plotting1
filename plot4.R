source("./FileUpload.R")
# call function that loads data
data <- FileUpload() 

# mutiple plots in a single view 
with(data,  
  { 

  png(filename = "plot4.png") 
  par(mfrow = c(2, 2))
  # First 
  active_power<- data$Global_active_power
  weekday <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(weekday, active_power, type = "l", ylab ="Global Active Power KW",xlab ="")
  
  # Second
  plot(weekday,data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  
  #Third 
  plot(weekday, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "") 
  lines(weekday, data$Sub_metering_1, col = "black") 
  lines(weekday, data$Sub_metering_2, col = "red") 
  lines(weekday, data$Sub_metering_3, col = "blue") 
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering1", "Sub_metering2", "Sub_metering3")) 
  
  #Fourth
  plot(weekday, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  dev.off() 
}) 
