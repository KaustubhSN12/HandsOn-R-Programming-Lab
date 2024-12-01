# Function to calculate factorial using a for loop
n <- 5

factorial_for <- function(n) {
  if (n < 0) {
    return("Factorial is not defined for negative numbers.")
  }
  
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}

# Using paste() to create a single string for print()
result_message <- paste("Factorial of", n, "is:", factorial_for(n))
print(result_message)



# Function to calculate Fibonacci numbers using a while loop
fibonacci_while <- function(n) {
  fib <- numeric(n)  # Create a numeric vector to store Fibonacci numbers
  fib[1] <- 0
  if (n > 1) {
    fib[2] <- 1
  }
  
  i <- 3
  while (i <= n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
    i <- i + 1
  }
  return(fib)
}
print(paste("Fibonacci sequence up to", n, "is:", toString(fibonacci_while(n))))

# Function to print numbers from 1 to 10 using repeat loop
print_numbers_repeat <- function() {
  i <- 1
  repeat {
    if (i > 10) {
      break  # Exit the loop when i is greater than 10
    }
    print(i)
    i <- i + 1
  }
}

print("Numbers from 1 to 10 are:")
print_numbers_repeat()



