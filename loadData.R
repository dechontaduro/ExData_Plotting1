urldata <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filezip <- "hpc.zip"
filedata <- "household_power_consumption.txt"

imgwidth <- 480
imgheigth <- 480

if (!file.exists(filedata)) { 
  if (!file.exists(filezip)){
    download.file(urldata, filezip)
  }
  unzip(filezip)
}

if(!exists("hpc")){
  hpc <- read.csv2(filedata, dec=".", na.strings = "?", colClasses = c(rep("character", 2), rep("numeric", 2)))
}

if(!exists("hpcp")){
  hpc$datetime <- strptime(paste(hpc$Date,hpc$Time), format="%d/%m/%Y %H:%M:%S")
  hpcp <- subset(hpc, trunc.POSIXt(hpc[,"datetime"], units = "day") == strptime("01/02/2007", format = "%d/%m/%Y") | trunc.POSIXt(hpc[,"datetime"], units = "day") == strptime("02/02/2007", format = "%d/%m/%Y"))
}