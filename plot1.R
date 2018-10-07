source("load_data.R")
png("plot1.png",
    width     = 8,
    height    = 8,
    units     = "in",
    res       = 1200,
    pointsize = 12
)
with(dt, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()