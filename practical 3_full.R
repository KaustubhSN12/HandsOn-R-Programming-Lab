#Create a student excel file and do the following operations using dplyr package: (rollno, name, class, sem, division, m1, m2, m3, dept)

# Load required libraries
library(dplyr)
library(writexl)

# Create the student data frame with Indian names
student_data <- data.frame(
  rollno = 1:11,
  name = c("Kaustubh", "Alok", "Sakshi", "Tushar", "Vinay", "Hari", "Aditi", "Neha", "Rohan", "Meera","jay"),
  class = c(16, 15, 14, 13, 14, 13, 14, 12, 16, 15, 12),
  sem = c(1, 1, 2, 2, 1, 1, 2, 2, 1, 2,2),
  division = c("A", "B", "A", "B", "A", "B", "A", "B", "A", "B","A"),
  m1 = c(85, 78, 92, 88, 76, 64, 90, 91, 82, 55, 25),
  m2 = c(90, 85, 95, 82, 88, 79, 93, 89, 77, 60, 18),
  m3 = c(88, 82, 90, 95, 81, 68, 85, 93, 79, 72, 9),
  dept = c("CS", "DS", "DS", "IT", "DS", "EE", "DS", "DS", "DS", "DS",'MCA')
)

# Write the data to an Excel file
write_xlsx(student_data, "student_data.xlsx")


student_data <- read_xlsx("student_data.xlsx")


# Confirm the dataset by displaying it
print(student_data)



#1. Calculate the total marks for each student 

student_data <- student_data %>%
  mutate(total_marks = m1 + m2 + m3)
print(student_data)


#2. Calculate the total percentage for each student

student_data <- student_data %>%
  mutate(percentage = (total_marks / 300) * 100)
print(student_data)


#3. Calculate the grade of student 

student_data <- student_data %>%
  mutate(grade = case_when(
    percentage >= 85 ~ "A",
    percentage >= 70 & percentage < 85 ~ "B",
    percentage >= 50 & percentage < 70 ~ "C",
    percentage < 50 ~ "Fail"
  ))

# View the updated dataset with grades
print(student_data)

#4. Display the student who is having the highest marks from each of the dept of college 

highest_marks_per_dept <- student_data %>%
          group_by(dept) %>%
              filter(total_marks == max(total_marks))

# Display the result
print(highest_marks_per_dept)


#5. Display the student who got first class


first_class_students <- student_data %>%
  filter(percentage >= 60)

# Display the result
print(first_class_students)

#6. Display the student who got the highest marks in subject 3

highest_marks_in_m3 <- student_data %>%
  filter(m3 == max(m3))
print(highest_marks_in_m3)


#7. Display the total count of student from each department  

student_count <- student_data %>%
        group_by(dept) %>%
    summarise(total_students = n())

print(student_count)

#8. Display the failed students 


failed_students <- student_data %>%
  filter(grade == "Fail")

# Display the result
print(failed_students)

#9. Display any random 5 students from “DS” department

set.seed(123)  # Set seed for reproducibility
random_5students <- student_data %>%
  filter(dept == "DS") %>%
  sample_n(5)

# Display the result
print(random_5students)


#Write the updated dataset which contains total marks, percent and grade in the excel file again

# Write the updated dataset with total marks, percentage, and grade 
write_xlsx(student_data, "updated_student_data.xlsx")

print("Updated dataset has been written to 'updated_student_data.xlsx'")

