data_list <- list(
  names = c("shashank", "Anki", "Kaustubh"),
  ages = c(25, 30, 22),
  scores = c(90.5, 85.0, 88.5),
  is_graduate = c(TRUE, TRUE, FALSE)
)

# Displaying  list
print("Original Data List:")
print(data_list)

# Accessing elements in the list
print("Names:")
print(data_list$names)  # Accessing names

print("Ages:")
print(data_list$ages)  # Accessing ages

# Modifying an element in the list
data_list$scores[2] <- 92.0  

print("Updated Scores:")
print(data_list$scores)

# Adding a new element to the list
data_list$city <- c("Mumbai", "Chennai", "Pune")

print("Data List After Adding City:")
print(data_list)

# Removing an element from the list
data_list$ages <- NULL  # Remove ages from the list
print("Data List After Removing Ages:")

print(data_list)

# Summary of the list
print("Summary of Data List:")
print(paste("Number of Names:", length(data_list$names)))
print(paste("Number of Scores:", length(data_list$scores)))
print("List Structure:")
str(data_list)

# Iterating over the list
print("Iterating Over the List:")
for (i in seq_along(data_list$names)) {
  print(paste("Student:", data_list$names[i], 
              "Score:", data_list$scores[i],
              "Graduate:", data_list$is_graduate[i],
              "City:", ifelse(is.null(data_list$city), "N/A", data_list$city[i])))
}

