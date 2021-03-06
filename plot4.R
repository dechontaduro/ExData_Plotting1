# I know that instruccions said 8 files, 4 scripts and 4 images,
#   but data is the same for all plots
# Weekdays names are in spanish

source("loadData.R")

png("plot4.png", width = imgwidth, height = imgheigth)
par(mfrow = c(2,2), mar = c(4.5, rep(2, 3)))

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