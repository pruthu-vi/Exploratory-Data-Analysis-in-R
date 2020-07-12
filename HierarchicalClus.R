set.seed(1234) # Remember 1234
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)

plot(x, y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))

d <- data.frame(x = x, y = y)
d
dist <- dist(d)

hClus <- hclust(dist)
hClus1 <- hclust(dist, method = "single")
hClus2 <- hclust(dist, method = "average")
hClus3 <- hclust(dist, method = "complete")

# Dendogram
plot(hClus)
plot(hClus1)
plot(hClus2)
plot(hClus3)

heatmap(as.matrix(d)[sample(1:12), ])