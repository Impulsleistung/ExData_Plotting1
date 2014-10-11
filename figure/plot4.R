#plot4.R

if(!exists("DT_TARGET_SET")) {
  # Getting, cleaning and subsetting of the data is done here:
  source("AS01_Bench.R")
}
png(file = "plot4.png", bg = "white")
par(mfcol=c(2,2),mar=c(2.5,4.2,2,1))
with(DT_TARGET_SET,{
  plot(POSIX_DATE,Global_active_power,
       type="l",ylab="Global Active Power",xlab="")
  plot(POSIX_DATE,Sub_metering_1,
       type="l",ylab="Energy sub metering",xlab="")
  lines(POSIX_DATE,Sub_metering_2,
        type="l",ylab="",xlab="",col="red")
  lines(POSIX_DATE,Sub_metering_3,
        type="l",ylab="",xlab="",col="blue")
  legend("topright",
         col=c("black","red","blue"),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=1,bty="n", lwd=2.5 )
  plot(POSIX_DATE,Voltage,
       type="l",ylab="Voltage",xlab="")
  plot(POSIX_DATE,Global_reactive_power,
       type="l",ylab="Global reactive power",xlab="")
  })
dev.off()