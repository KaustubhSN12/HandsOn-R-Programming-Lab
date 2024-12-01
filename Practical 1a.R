# R Program to demonstrate expressions, assignment, and decision making

# 1. Expressions and Assignment
x <- 12     # Assigning value 10 to x
y <- 8       # Assigning value 5 to y

# Expression: Calculate the sum of x and y
sum_xy <- y - x
print(paste("The sum of x and y is:", sum_xy))

# 2. Decision Making
# Check if the sum is greater than 15
if (sum_xy > 15) {
  print("The sum is greater than 15.")
} else if (sum_xy == 15) {
  print("The sum is equal to 15.")
} else {
  print("The sum is less than 15.")
}

# 3. Additional Decision Making Example
# Check if x is even or odd
if (x %% 2 == 0) {
  print("x is even.")
} else {
  print("x is odd.")
}

# 4. Using a function to demonstrate expressions and decision making
check_number <- function(sum_xy) {
  if (sum_xy > 0) {
    return("Positive")
  } else if (sum_xy < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

# Call the function
result <- check_number(x)
print(paste("The number x is:", result))

