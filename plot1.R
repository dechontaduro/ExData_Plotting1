# I know that instruccions said 8 files, 4 scripts and 4 images,
#   but data is the same for all plots
# Weekdays names are in spanish


source("loadData.R")
par(mfrow= c(1,1), mar = rep(2, 4))

png("plot1.png", width = imgwidth, height = imgheigth)
hist(hpcp$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
