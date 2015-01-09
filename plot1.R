source("./FileUpload.R") 
# call function that loads data
 data <- FileUpload() 
# Histrogram of global active power 
with(data, { 
    png(filename = "plot1.png") 
    hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",col = "red") 
  }) 
dev.off() 
