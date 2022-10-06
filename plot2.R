###Creating plot 

#Getting the data 

data = read.csv2("household_power_consumption.txt",skip=66636, nrow=2880, 
                 col.names=c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity","sub_metering_1","sub_metering_2","sub_metering_3"))

#plot code

library(lubridate)

data$Date = as.Date(data$Date, format = "%d/%m/%Y")
data$date_time = as_datetime(paste(data$Date, data$Time))
data$Global_active_power = as.numeric(data$Global_active_power)

plot(data$Global_active_power ~ data$date_time, type="l",
        main="Global Active Power", ylab="Global active power (kilowatts)", 
        xlab="")

#exporting plot 

png(file="C:/Users/DELL/Documents/Data analysis/Exploratory_data_analysis/desarchive/plot2.png",
    width=480, height=480)
plot(data$Global_active_power ~ data$date_time, type="l",
     main="Global Active Power", ylab="Global active power (kilowatts)", 
     xlab="")
dev.off()
