# Here we see how colors works in R

x <- rnorm(1000)
y <- rnorm(1000)
?rgb

plot(x, y, pch = 19, 
     col = rgb(red = 0.75, green = 0.25, blue = 0))

plot(x, y, pch = 19, 
     col = rgb(red = 0, green = 0.5, blue = 0.5))
## if we want see more
plot(x, y, pch = 19, 
     col = rgb(red = 0, green = 0.5, blue = 0.5, alpha = 0.3))


?image
image(x = matrix(rnorm(100), 10, 10), col = c("blue", "green"))

require("grDevices") # for colours
x <- y <- seq(-4*pi, 4*pi, length.out = 27)
r <- sqrt(outer(x^2, y^2, "+"))
image(z = z <- cos(r^2)*exp(-r/6), col = gray.colors(33))

image(t(volcano)[ncol(volcano):1,])

# A prettier display of the volcano
x <- 10*(1:nrow(volcano))
y <- 10*(1:ncol(volcano))
image(x, y, volcano, col = hcl.colors(100, "terrain"), axes = FALSE)
contour(x, y, volcano, levels = seq(90, 200, by = 5),
        add = TRUE, col = "brown")
axis(1, at = seq(100, 800, by = 100))
axis(2, at = seq(100, 600, by = 100))
box()
title(main = "Maunga Whau Volcano", font.main = 4)

# more search on,
# RColorBrewer
# colorRamp

x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y)
