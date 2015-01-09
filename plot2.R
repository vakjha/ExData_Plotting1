source("./FileUpload.R")
# call function that loads data
data <- FileUpload() 
# X Y Plot (line) of power consumption
with(data, { 
  png(filename = "plot2.png") 
  active_power<- data$Global_active_power
  weekday <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
  plot(weekday, active_power, type = "l", ylab ="Global Active Power (KW)",xlab ="")
  }) 
dev.off() 