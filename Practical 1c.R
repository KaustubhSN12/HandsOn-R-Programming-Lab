# 1. Vectors
# Creating a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
print("Numeric Vector:")
print(numeric_vector)

# Accessing elements in the vector
print("First element of the vector:")
print(numeric_vector[1])  # Accessing the first element

# Modifying elements in the vector
numeric_vector[3] <- 10
print("Modified Numeric Vector:")
print(numeric_vector)

# 2. Matrices
# Creating a matrix (2 rows, 3 columns)
matrix_data <- matrix(1:6, nrow = 2, ncol = 3)
print("Matrix:")
print(matrix_data)

# Accessing elements in the matrix
print("Element at row 1, column 2:")
print(matrix_data[1, 2])  # Accessing element at first row, second column

# Modifying elements in the matrix
matrix_data[2, 3] <- 20
print("Modified Matrix:")
print(matrix_data)

# 3. Arrays
# Creating a 3D array (2x3x2)
array_data <- array(1:12, dim = c(2, 3, 2))
print("3D Array:")
print(array_data)

# Accessing elements in the array
print("Element at (1, 2, 1):")
print(array_data[1, 2, 1])  # Accessing the element at first row, second column, first slice

# Modifying elements in the array
array_data[2, 1, 2] <- 30
print("Modified 3D Array:")
print(array_data)

# Summary of the data structures
print("Summary of Data Structures:")
print(paste("Vector Length:", length(numeric_vector)))
print(paste("Matrix Dimensions:", toString(dim(matrix_data))))
print(paste("Array Dimensions:", toString(dim(array_data))))

