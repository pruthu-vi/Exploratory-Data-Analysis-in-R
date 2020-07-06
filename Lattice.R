library(lattice)
library(datasets)

p <- xyplot(Ozone ~ Wind, data = airquality, pch = 20)
print(p)

table(airquality$Month)
airquality <- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))

# Panel function
set.seed(12) # remember 12 :)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("G1", "G2"))
xyplot(y ~ x | f, layout = c(2, 1), pch = 17)

## custome panel function
xyplot(y ~ x | f, panel = function(x, y, ...){
      panel.xyplot(x, y, ...)
      panel.abline(h = median(y), lty = 2)
})

xyplot(y ~ x | f, panel = function(x, y, ...){
      panel.xyplot(x, y, ...)
      panel.lmline(x, y, col = "red")
})
