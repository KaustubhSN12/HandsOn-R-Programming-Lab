# Load necessary libraries
library(ggplot2)

# Load the iris dataset
data(iris)

# 1. Scatter Plot: Sepal.Length vs Sepal.Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Sepal Width", x = "Sepal Length", y = "Sepal Width")

# 2. Histogram of Sepal Length
ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(bins = 10, alpha = 0.6, position = "identity") +
  labs(title = "Histogram of Sepal Length", x = "Sepal Length")

# 1. Bar Graph: Count of each species
bar_plot <- ggplot(iris, aes(x = Species)) +
  geom_bar(fill = "lightblue") +
  labs(title = "Count of Each Species", x = "Species", y = "Count")
print(bar_plot)



line_plot <- ggplot(aggregate(Sepal.Length ~ Species, data = iris, FUN = mean), 
                    aes(x = Species, y = Sepal.Length)) +
  geom_line(group = 1, color = "blue") + geom_point() +
  labs(title = "Average Sepal Length by Species", x = "Species", y = "Average Sepal Length")

# Print the line plot
print(line_plot)

