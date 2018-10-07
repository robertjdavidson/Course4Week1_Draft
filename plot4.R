source("load_data.R")
png("plot4.png",
    width     = 8,
    height    = 8,
    units     = "in",
    res       = 1200,
    pointsize = 12
)
par(mfrow = c(2, 2))
with(dt, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
with(dt, plot(DateTime, Voltage, type = "l", xlab = "", ylab = "Voltage"))
with(dt, {
    plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(DateTime, Sub_metering_2, type = "l", col = "red")
    lines(DateTime, Sub_metering_3, type = "l", col = "blue")
    legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
})
with(dt, plot(Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power (kilowatts)"))
dev.off()