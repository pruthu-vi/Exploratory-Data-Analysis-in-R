# Here we use ggplot to create some awsome graphs.

# Nessasory libraries
library(ggplot2)
library(dplyr)

iris <- iris
View(iris)
str(iris)
# In iris data set we have 4 cotinuous numerical variable and,
# one categorical(factor) variable.
table(iris$Species)

ggplot(data = iris)
ggplot(data = iris, aes(x=Sepal.Length, y=Petal.Length))
ggplot(data = iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point()
ggplot(data = iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point()
ggplot(data = iris, aes(x=Sepal.Length, y=Petal.Length, col=Species)) + geom_point()

ggplot(data = iris, aes(x=Sepal.Length, y=Petal.Length, col=Species, shape=Species)) +
       geom_point() + xlab("Sepal Length") + ylab("Petal Length")
