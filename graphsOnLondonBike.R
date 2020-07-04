# Nessasory libraries
library(ggplot2)
library(dplyr)



# First import the data set
londonBike <- read.csv("londonBike.csv")
# Since in this data set x column is not usable 
?select.list
londonBike %>% select(c(-1)) -> mydata
View(mydata)

# First lets underestand of this data set
# we have 
table(mydata$hour)
table(mydata$season)
table(mydata$day)
table(mydata$is_holiday)
table(mydata$weatherCond)


# Lets do some basic graphing
# 1). Scatter plot
plot(mydata$temp ~ mydata$count)
plot(mydata$humidity ~ mydata$count)
plot(mydata$humidity ~ mydata$wind_speed, 
     ylab = "Humidity", xlab = "Wind Speed", main = "Humidity vs Wind Speed",
     col = "blue", pch = 16)

# 2). Histogram
hist(mydata$count)
hist(mydata$humidity)
hist(mydata$wind_speed)
hist(mydata$temp, 
     xlab = "Temperature", main = "Histogram of Temperature", col = "purple")

# 3). Box plot
boxplot(mydata$temp)
boxplot(mydata$humidity)
boxplot(mydata$wind_speed)
boxplot(mydata$count ~ mydata$is_holiday,
       xlab = "Is Holiday", ylab = "Bike count", 
       main = "Bike count based on Holiday or not",
       col = "green", pch = 16)
boxplot(mydata$count ~ mydata$day,
        xlab = "Days", ylab = "Bike count", 
        main = "Bike count based on Days",
        col = "purple", pch = 16)
boxplot(mydata$count ~ mydata$season,
        xlab = "Seasons", ylab = "Bike count", 
        main = "Bike count based on Seasons",
        col = "red", pch = 16)
boxplot(mydata$count ~ mydata$hour,
        xlab = "Hours", ylab = "Bike count", 
        main = "Bike count based on Hours",
        col = "yellow", pch = 16)

# Now we do some more on these graphs by ggplot
ggplot(data = mydata)
ggplot(data = mydata, aes(y = count, x = hour))
ggplot(data = mydata) + geom_boxplot(aes(x=factor(hour), 
                                         y=count, fill=factor(hour)), 
                                     position=position_dodge(1),
                                     show.legend = FALSE) +
                                     ylab("Number of rentals per hour") + 
                                     xlab("Hour of the day")



