#plot2.R

if(!exists("DT_TARGET_SET")) {
  # Getting, cleaning and subsetting of the data is done here:
  source("AS01_Bench.R")
}
png(file = "plot2.png", bg = "white")
with(DT_TARGET_SET, 
     plot(POSIX_DATE,Global_active_power,
          type="l",ylab="Global Active Power (kilowatts)",xlab="")
     )
dev.off()