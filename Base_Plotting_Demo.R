x <- rnorm(100)
hist(x)

y <- rnorm(100)
plot(x, y)

# Let's add more plot variables to give our plot more beauty,
par(mar = c(2, 2, 2, 2)) # bottom, left, top, right :)
plot(x, y)

par(mar = c(4, 4, 2, 1))
plot(x, y)

help(plot)
# All pch's with cex's
plot(x, y, pch = 1)     # default, round
plot(x, y, pch = 2)     # triangle
plot(x, y, pch = 3)     # +
plot(x, y, pch = 4)     # cross
plot(x, y, pch = 5)
plot(x, y, pch = 6, cex = 1)
plot(x, y, pch = 7, cex = 2)
plot(x, y, pch = 8, cex = 3)
plot(x, y, pch = 9, cex = 4)
plot(x, y, pch = 10, cex = 5)
plot(x, y, pch = 11)
plot(x, y, pch = 12)
plot(x, y, pch = 13)
plot(x, y, pch = 14)
plot(x, y, pch = 15)
plot(x, y, pch = 16)
plot(x, y, pch = 17)
plot(x, y, pch = 18)
plot(x, y, pch = 19)
plot(x, y, pch = 20)

# Handy tool to see about plots
example(plot)
example(points)

# Add labels, texts, legends
library(help = "graphics")
n <- 500
x <- rnorm(n)
y <- rnorm(n)

plot(x, y, xlab = "Weight", ylab = "Height")
title("Scatterplot(W vs H)")
arrows(-3, 3, -2.4, 1.3, col = "red") # coordinates (x0,y0) -> (x1,y1)
text(-2.5, -2.5, "Text :)")
legend("topright", legend = "Data", pch = 1)
abline(lm(y ~ x), col = "red", lwd = 3) 

# Adding multiple plots on same page
z <- rpois(n, 2)

par(mfrow = c(2, 2), mar = c(2, 2, 1, 1))
plot(x, y, pch = 20, col = "green")
plot(x, z, pch = 19, col = "red")
plot(y, z, pch = 18, col = "blue")
plot(y, x, pch = 17, col = "pink")
# * note here(above) we specify "mfrow", so plots go according to row order.

par(mfcol = c(2, 2), mar = c(2, 2, 1, 1))
plot(x, y, pch = 20, col = "green")
plot(x, z, pch = 19, col = "red")
plot(y, z, pch = 18, col = "blue")
plot(y, x, pch = 17, col = "pink")


# Understand about factors
gender <- gl(2, n/2, labels = c("Male", "Female"))
str(gender)

plot(x, y, type = "n")  # No points
points(x[gender == "Male"], y[gender == "Male"], col = "red", pch = 20)
points(x[gender == "Female"], y[gender == "Female"], col = "green", pch = 18)
legend("topright", legend = c("Male", "Female"), title = "Gender", 
       col = c("red", "green"), pch = c(20, 18))



# Getting output
pdf(file = "myplot1.pdf")
plot(x, y, type = "n")
points(x[gender == "Male"], y[gender == "Male"], col = "red", pch = 20)
points(x[gender == "Female"], y[gender == "Female"], col = "green", pch = 18)
legend("topright", legend = c("Male", "Female"), title = "Gender", 
       col = c("red", "green"), pch = c(20, 18))
title(main = "My Plot")
dev.off() # important

