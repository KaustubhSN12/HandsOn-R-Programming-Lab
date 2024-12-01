# Read the employee data from the CSV file
employee_data <- read.csv("employee_data1.csv")
employee_data
library(lubridate)
install.packages("lubridate")


total_salary <- employee_data %>%
  summarise(TotalSalary = sum(Salary))

print(total_salary)




#============================================================


max_salary_by_dept <- employee_data %>%

  group_by(dept) %>%
  slice(which.max(Salary))

print(max_salary_by_dept)


#============================================================
#Maximum Salary According to Designation
max_salary_by_designation <- employee_data %>%
  group_by(designation) %>%
  summarise(MaxSalary = max(Salary))

print(max_salary_by_designation)


#============================================================
#Extract Year from Joining Date


# Extract year from joiningDate
employee_data <- employee_data %>%
  mutate(JoiningYear = year(ymd(joiningDate)))

# View the updated data
employee_data %>% select(empID, empName, JoiningYear)


#============================================================

# Load necessary libraries

# Calculate experience for each employee, rounding to one decimal place
employee_data <- employee_data %>%
  mutate(ExperienceYears = round(as.numeric(difftime(Sys.Date(), ymd(joiningDate), units = "weeks")) / 52.25, 1))

# View the updated data frame with ExperienceYears
employee_data %>% select(empID, empName, ExperienceYears)


employee_data

#not part of this 
library(ggplot2)
ggplot(employee_data, aes(x = Salary, y = ExperienceYears, color = dept)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Scatter Plot of Salary vs. Experience",
    x = "Salary",
    y = "Experience (Years)"
  ) +
  theme_minimal()
#============================================================

# Minimum salary of employee from each department
min_salary_per_dept <- employee_data %>%
  group_by(dept) %>%
  summarise(MinSalary = min(Salary, na.rm = TRUE)) %>%
  ungroup()

# View the result
min_salary_per_dept


#============================================================


# Employees working for more than 2 years in Finance department
employees_more_than_2_years_finance <- employee_data %>%
  filter(dept == 'Finance', ExperienceYears > 2)

# View the result
employees_more_than_2_years_finance

#============================================================
employee_data1 <- read.csv("employee_data2.csv")
employee_data1


# Randomly select 5 employees from IT department
random_employees_it <- employee_data1 %>%
  filter(dept == 'IT') %>%
  sample_n(5)

# View the result
random_employees_it

#============================================================