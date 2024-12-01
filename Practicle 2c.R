# Function to calculate factorial of a number
factorial_function <- function(n) {
  if (n < 0) return("Factorial is not defined for negative numbers.")
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}

# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) return(FALSE)
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) return(FALSE)
  }
  return(TRUE)
}

# Function to find the maximum value in a vector
max_value <- function(vec) {
  if (length(vec) == 0) return(NA)
  max_val <- vec[1]
  for (val in vec) {
    if (val > max_val) max_val <- val
  }
  return(max_val)
}

# Main execution
cat("Factorial of 5 is:", factorial_function(5), "\n")
cat("Is 29 prime?", is_prime(29), "\n")
cat("Maximum value in c(10, 20, 30, 40, 50) is:", max_value(c(10, 20, 30, 40, 50)), "\n")
cat("Maximum value in an empty vector is:", max_value(c()), "\n")
