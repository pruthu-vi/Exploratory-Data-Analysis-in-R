library(ggplot2)

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

