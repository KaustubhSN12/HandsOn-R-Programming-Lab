
  
  safe_divide <- function(a, b) {
    result <- tryCatch(
      {
        if (b == 0) stop("Division by zero is not allowed!")  # Manually throw an error
        a / b
      },
      error = function(e) {
        message("Error: ", e$message)
        return(NA)  # Return NA in case of an error
      }
    )
    return(result)
  }

# Test the function with valid input
print(safe_divide(10, 2))  # Output: 5

# Test the function (causes an error)
print(safe_divide(10, 0))  
