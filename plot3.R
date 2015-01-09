source("./FileUpload.R")
# call function that loads data
data <- FileUpload() 
# plot of mutiple lines in different colors 
with(data, { 
  png(filename = "plot3.png") 
  weekday <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S") 
  plot(weekday, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "") 
  lines(weekday, data$Sub_metering_1, col = "black") 
  lines(weekday, data$Sub_metering_2, col = "red") 
  lines(weekday, data$Sub_metering_3, col = "blue") 
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering1", "Sub_metering2", "Sub_metering3")) 
}) 
dev.off() 