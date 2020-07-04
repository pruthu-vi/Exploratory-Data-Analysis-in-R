# 1 --------------------------
# Base Plot
# In histograms, put a rug(variable) underline.
# This is just an example,
library(help = "datasets")
data("airquality")
head(airquality)
summary(airquality)
# View(airquality)

hist(airquality$Wind, col = "green")
rug(airquality$Wind)

hist(airquality$Wind, col = "green", breaks = 50)
rug(airquality$Wind)
abline(h = 7, col = "red")
abline(v = mean(airquality$Wind), col = "blue", lwd = 2)

# Boxplot
boxplot(airquality$Wind, col = "blue")
abline(h = 12, col = "red")

# Barplot
barplot(table(airquality$Month), col = "green")

# Multiple plots
attach(airquality)
boxplot(Solar.R ~ Month, data = airquality, col = "yellow")
abline(h = mean(Solar.R), col = "red") # why?

par(mfrow = c(5, 1), mar = c(4, 4, 2, 1))
hist(subset(airquality, Month == 5)$Solar.R, col = "red")
hist(subset(airquality, Month == 6)$Solar.R, col = "green")
hist(subset(airquality, Month == 7)$Solar.R, col = "blue")
hist(subset(airquality, Month == 8)$Solar.R, col = "yellow")
hist(subset(airquality, Month == 9)$Solar.R, col = "purple")

with(airquality, plot(x = Solar.R, y = Wind, col = Month))
abline(h = 12, lty = 2, lwd = 2)

plot(Ozone, Wind, col = Month)
abline(h = 12, lty = 2, lwd = 2)


par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
with(subset(airquality, Month == 5), plot(Solar.R, Wind, col = "red"))
with(subset(airquality, Month == 6), plot(Solar.R, Wind, col = "green"))
with(subset(airquality, Month == 7), plot(Solar.R, Wind, col = "blue"))
with(subset(airquality, Month == 8), plot(Solar.R, Wind, col = "black"))

detach(airquality)


# 2 --------------
# Lattice package
library(lattice)
library(datasets)
library(help = "datasets")
head(mtcars)
attach(mtcars)

table(cyl)

xyplot(hp ~ mpg | cyl, data = mtcars, layour = c(3, 1))

detach(mtcars)


# 3 -------------
# ggplot
library(ggplot2)
data("mtcars")
str(mtcars)
attach(mtcars)
?ggplot
ggplot(data = mtcars, aes(x = mpg, y = hp, col = cyl)) +
      geom_point()



ggplot(data = mtcars) + geom_boxplot(aes(x=factor(cyl), 
                                         y=mpg, fill=factor(cyl)), 
                                     position=position_dodge(1),
                                     show.legend = FALSE)

ggplot(data = mtcars) + geom_boxplot(aes(x=factor(cyl), 
                                         y=hp, fill=factor(cyl)), 
                                     position=position_dodge(1),
                                     show.legend = FALSE)

# Under-this is not working, 
par(mfrow = c(2, 1), mar = c(4, 4))
ggplot(data = mtcars) + geom_boxplot(aes(x=factor(cyl), 
                                         y=mpg, fill=factor(cyl)), 
                                     position=position_dodge(1),
                                     show.legend = FALSE)
ggplot(data = mtcars) + geom_boxplot(aes(x=factor(cyl), 
                                         y=hp, fill=factor(cyl)), 
                                     position=position_dodge(1),
                                     show.legend = FALSE)
