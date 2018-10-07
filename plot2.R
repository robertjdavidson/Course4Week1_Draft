source("load_data.R")
png("plot2.png",
    width     = 8,
    height    = 8,
    units     = "in",
    res       = 1200,
    pointsize = 12
)
with(dt, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()