#Make an employee.csv file and do the following operations using subset:
install.packages(dplyr)
library(dplyr)

getwd()
setwd("G://SIES FY PART 1 2024-25//SEM 1//Data Science – I//practicals")
# Create the data frame
employee_data <- data.frame(
  ID = 1:12,
  Name = c("Kaustubh Narayankar", "Vinay", "Alok", "Hari", "Alston", "Neha", "Sameer", 
           "Aditi", "Rohan", "Sneha", "Vikram", "Anita"),
  City = c("Pune", "Pune", "Pune", "Pune", "Pune", "Mumbai", "Bangalore", 
           "Pune", "Pune", "Pune", "Delhi", "Mumbai"),
  Department = c("Engineering", "IT", "Engineering", "IT", "HR", "Engineering", 
                 "Marketing", "Finance", "Engineering", "HR", "Marketing", "Finance"),
  JobRole = c("Developer", "Manager", "Developer", "Manager", "Manager", 
              "Developer", "Manager", "Analyst", "Developer", "Executive", "Executive", "Manager"),
  Salary = c(50000, 45000, 48000, 47000, 49000, 52000, 46000, 44000, 51000, 45000, 43000, 45500),
  Gender = c("Male", "Male", "Male", "Male", "Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female"),
  JoiningDate = as.Date(c("2018-05-10", "2021-07-19", "2019-03-11", "2017-10-12", "2020-09-23", 
                          "2018-11-01", "2016-04-14", "2020-08-22", "2019-01-05", "2018-06-20", 
                          "2022-02-25", "2015-09-16"))
)

# View the data
print(employee_data)



#(i) Find out the employees who stays in ‘Pune’.

pune_employees <- subset(employee_data, City == "Pune")
print(pune_employees)

  
#(ii) Find out the employees who are manager in 'IT' Dept. 

it_managers <- subset(employee_data, Department == "IT" & JobRole == "Manager")
print(it_managers)



#(iii)Find out the female employees who stays in 'Mumbai'.

female_mumbai_emp <- subset(employee_data, City == "Mumbai" & Gender == "Female")
print(female_mumbai_emp)



#(iv) Find out the total salary for each and every employees.

# Total salary department-wise
dept_wise_salary <- aggregate(Salary ~ Department, data = employee_data, sum)
# Total salary of all employees
total_salary <- sum(employee_data$Salary)

print(dept_wise_salary)
print("total salary of all employees : ")
print(total_salary)





#V)Find out the employees who were working before 2020.

employees_before_2020 <- subset(employee_data, JoiningDate < as.Date("2020-01-01"))
print(employees_before_2020)



#(vi) Find out the employee who got the highest salary. 

highest_salary_employee <- employee_data[which.max(employee_data$Salary), ]
print(highest_salary_employee)


