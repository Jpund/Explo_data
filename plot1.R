###Creating plot 

#Getting the data 

data = read.csv2("household_power_consumption.txt",skip=66636, nrow=2880, 
col.names=c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity","sub_metering_1","sub_metering_2","sub_metering_3"))

#plot code

hist(data$Global_active_power, col="red",  main="Global Active Power", xlab="Global active power (kilowatts)")

#exporting plot 

png(file="C:/Users/DELL/Documents/Data analysis/Exploratory_data_analysis/desarchive/plot1.png",
    width=480, height=480)
hist(data$Global_active_power, col="red",  main="Global Active Power", xlab="Global active power (kilowatts)")
dev.off()