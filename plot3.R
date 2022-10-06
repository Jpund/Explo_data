###Creating plot 

#Getting the data 

data = read.csv2("household_power_consumption.txt",skip=66636, nrow=2880, 
                 col.names=c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity","sub_metering_1","sub_metering_2","sub_metering_3"))

#plot code

data$Date = as.Date(data$Date, format = "%d/%m/%Y")
data$date_time = as_datetime(paste(data$Date, data$Time))
data$Global_active_power = as.numeric(data$Global_active_power)

data$sub_metering_1 = as.numeric(data$sub_metering_1)
data$sub_metering_2 = as.numeric(data$sub_metering_2)
data$sub_metering_3 = as.numeric(data$sub_metering_3)

plot(data$sub_metering_1 ~ data$date_time, 
     type="l", ylab="Energy sub metering", xlab="", col="black")

lines(data$date_time, data$sub_metering_2, col = "red", type = "l")
lines(data$date_time, data$sub_metering_3, col = "blue", type = "l")
lines(data$date_time, data$sub_metering_1, col = "black", type = "l")
legend("topright", legend=c("sub_metering_1 ","sub_metering_2","sub_metering_3"), 
   col=c("black","blue","red"),lty = 1, cex=0.6)

#exporting plot 

png(file="C:/Users/DELL/Documents/Data analysis/Exploratory_data_analysis/desarchive/plot3.png",
    width=480, height=480)
plot(data$sub_metering_1 ~ data$date_time, 
     type="l", ylab="Energy sub metering", xlab="", col="black")

lines(data$date_time, data$sub_metering_2, col = "red", type = "l")
lines(data$date_time, data$sub_metering_3, col = "blue", type = "l")
lines(data$date_time, data$sub_metering_1, col = "black", type = "l")
legend("topright", legend=c("sub_metering_1 ","sub_metering_2","sub_metering_3"), 
       col=c("black","blue","red"),lty = 1, cex=0.6)
dev.off()
