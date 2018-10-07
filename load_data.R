library("dplyr")
library("lubridate")

rm(list = ls())
setAs("character", "DMY", function(from) dmy(from))
setAs("character", "HMS", function(from) hms(from))
dt <- as_tibble(read.table("household_power_consumption.txt", 
        header = TRUE,
        sep = ";",
        na.strings = "?",
        colClasses = c("DMY", "HMS", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")))
dt <- dt %>%
    mutate(DateTime = update(Date, hours = hour(Time), minutes = minute(Time), seconds = second(Time))) %>% 
    select(DateTime, c(3:9)) %>%
    filter(DateTime < dmy("3/2/2007")) %>% filter(DateTime >= dmy("1/2/2007"))
