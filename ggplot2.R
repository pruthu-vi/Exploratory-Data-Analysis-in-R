library(ggplot2)

# 1. qplot()------------
str(mpg)
dim(mpg)
attach(mpg)
names(mpg)

qplot(displ, hwy, data = mpg)
qplot(displ, hwy, data = mpg, color = drv)
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))

qplot(hwy, data = mpg, fill = drv, bins = 30)

qplot(displ, hwy, data = mpg, facets = . ~ drv)

qplot(hwy, data = mpg, facets = drv ~ ., binwidth = 2)

qplot(log(displ), data = mpg, bins = 30, fill = factor(cyl))

qplot(log(displ), data = mpg, geom = "density")
qplot(log(displ), data = mpg, geom = "density", color = factor(cyl),
      fill = factor(cyl))

qplot(log(displ), log(hwy), data = mpg, 
      shape = factor(cyl), color = factor(drv))

qplot(log(displ), log(hwy), data = mpg, color = factor(fl))

qplot(log(displ), log(hwy), data = mpg, 
      color = factor(fl)) + geom_smooth(method = "lm")




# 2. ggplot()---------
library(ggplot2)
library(help = "ggplot2")
str(mpg)
attach(mpg)
?mpg

ggplot(data = mpg, aes(displ, hwy))

ggplot(data = mpg, aes(displ, hwy)) + geom_point()
ggplot(data = mpg, aes(displ, hwy)) + geom_point(col = factor(cyl))
ggplot(data = mpg, aes(displ, hwy, col = factor(cyl))) + geom_point()

ggplot(data = mpg, aes(displ, hwy)) + geom_point() + geom_smooth()
ggplot(data = mpg, aes(displ, hwy)) + geom_point() + geom_smooth(method = "lm")

ggplot(data = mpg, aes(displ, hwy)) + geom_point() + 
      geom_smooth() + facet_grid(. ~ factor(cyl))

ggplot(data = mpg, aes(displ, hwy, col = factor(cyl))) + 
      geom_point() + xlab("Engine displacement, in litres") +
      ylab("Highway miles per gallon") +
      ggtitle("Plot for displ vs hwv") +
      labs(col = "No of Cylinder")

# 3. More ggplot()----------
library(ggplot2)

testdata <- data.frame(x = 1:100, y = rnorm(100))
str(testdata)

plot(testdata$x, testdata$y, type = "l")
## let's put a outlier to data
testdata[50, 2] <- 100  # Outlier

plot(testdata$x, testdata$y, type = "l")
plot(testdata$x, testdata$y, type = "l", ylim = c(-4, 4))

ggplot(testdata, aes(x, y)) + geom_line()
ggplot(testdata, aes(x, y)) + geom_line() + ylim(-4, 4)
ggplot(testdata, aes(x, y)) + geom_line() + coord_cartesian(ylim = c(-4, 4))
