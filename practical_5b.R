# Load necessary libraries
library(ggplot2)
library(dplyr)


setwd("G:/SIES FY PART 1 2024-25/SEM 1/Data Science – I/practicals")
# Read the employee.csv file
employee_data <- read.csv("employee_data1.csv")

# Display the first few rows of the data
print(head(employee_data))



-------------------------------------------------
  # Calculate experience for all employee 
  employee_data <- employee_data %>%
  mutate(ExperienceYears = round(as.numeric(difftime(Sys.Date(), ymd(joiningDate), units = "weeks")) / 52.25, 1))

employee_data %>% select(empID, empName, ExperienceYears)

  
# Scatter Plot: Salary vs. Age
ggplot(employee_data, aes(x = Job.Role, y = Salary, color = Department)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Scatter Plot of Salary vs. Age", x = "Age", y = "Salary") +
  theme_minimal()

# Bar Chart: Count of Employees by Department
employee_count <- employee_data %>%
  group_by(Department) %>%
  summarize(Count = n())

# Plot Bar Chart
ggplot(employee_count, aes(x = Department, y = Count, fill = Department)) +
  geom_bar(stat = "identity") +
  labs(title = "Number of Employees by Department", x = "Department", y = "Employee Count") +
  theme_minimal()

