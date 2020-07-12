set.seed(1234) # Remember 1234
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)

plot(x, y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))

d <- data.frame(x = x, y = y)

kmObj <- kmeans(d, centers = 3)
names(kmObj)
kmObj$cluster

plot(x, y, col = kmObj$cluster, pch = 19, cex = 2)
points(kmObj$centers, col = 1:3, pch = 3, cex = 3, lwd = 3)


