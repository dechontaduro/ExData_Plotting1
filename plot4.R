source("loadData.R")
par(mfrow = c(2,4))

png("plot4.png", width = imgwidth, height = imgheigth)
with(hpcp, {
  plot(datetime, Global_active_power, type = "l", xlab="", ylab = "Global Active Power")
  plot(datetime, Voltage, type = "l", xlab="datetime", ylab = "Voltaje")
  plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(datetime, Sub_metering_2, type = "l", col ="red")
  lines(datetime, Sub_metering_3, type = "l", col ="blue")
  legend("topright", bty="n",y.intersp = 1, xjust = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 2)
  plot(datetime, Global_reactive_power, type = "l",xlab="datetime", ylab = "Global_reactive_power")
})
dev.off()