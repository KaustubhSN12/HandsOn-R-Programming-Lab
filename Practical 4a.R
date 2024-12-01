# Load the iris dataset
library(ggplot2)

datasets::iris
# 1. Scatter Plot: Sepal.Length vs Sepal.Width
plot(iris$Sepal.Length, iris$Sepal.Width, 
     main = "Sepal Length vs Sepal Width",
     xlab = "Sepal Length", ylab = "Sepal Width",
     col = iris$Species, pch = 19)
legend("topright", legend = levels(iris$Species), col = 1:3)

# 2. Histogram of Sepal Length
hist(iris$Sepal.Length, breaks = 10, 
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length", col = "pink")

