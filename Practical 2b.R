student_data <- data.frame(
  Name = c("Kaustubh", "Shashank", "Om"),
  Age = c(25, 30, 22),
  Score = c(90.5, 85.0, 88.5),
  Graduate = c(TRUE, TRUE, FALSE),
  stringsAsFactors = FALSE  # Prevent automatic conversion of strings to factors
)

#  data frame
print("Original Student Data Frame:")
print(student_data)

# Accessing columns in the data frame
print("Names of Students:")
print(student_data$Name)

print("Scores of Students:")
print(student_data$Score)

# Modifying 
student_data$Score[2] <- 92.0 
print("Updated Student Data Frame:")
print(student_data)

# Adding a new row to the data frame
new_student <- data.frame(Name = "Krish", Age = 28, Score = 91.0, Graduate = TRUE, stringsAsFactors = FALSE)
student_data <- rbind(student_data, new_student)  # Append new student
print("Data Frame After Adding New Student:")
print(student_data)

student_data <- student_data[-which(student_data$Name == "Kaustubh"), ]
print("Data Frame After Removing Kaustubh:")
print(student_data)

# Summary of the data frame
print("Summary of Student Data Frame:")
print(summary(student_data))

# Sorting the data frame by Score
sorted_data <- student_data[order(student_data$Score, decreasing = TRUE), ]
print("Data Frame Sorted by Score:")
print(sorted_data)

# Iterating over the data frame
print("Iterating Over the Student Data Frame:")
for (i in 1:nrow(student_data)) {
  print(paste("Student:", student_data$Name[i], 
              "Age:", student_data$Age[i], 
              "Score:", student_data$Score[i], 
              "Graduate:", student_data$Graduate[i]))
}

