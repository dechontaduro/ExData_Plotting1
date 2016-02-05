# I know that instruccions said 8 files, 4 scripts and 4 images,
#   but data is the same for all plots
# Weekdays names are in spanish


source("loadData.R")
par(mfrow= c(1,1), mar = rep(2, 4))

png("plot3.png", width = imgwidth, height = imgheigth)
plot(hpcp$datetime, hpcp$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(hpcp$datetime, hpcp$Sub_metering_2, type = "l", col ="red")
lines(hpcp$datetime, hpcp$Sub_metering_3, type = "l", col ="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 2)
dev.off()