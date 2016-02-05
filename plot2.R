source("loadData.R")
par(mfrow= c(1,1), mar = rep(2, 4))

png("plot2.png", width = imgwidth, height = imgheigth)
plot(hpcp$datetime, hpcp$Global_active_power, type = "l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()