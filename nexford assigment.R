# Number of workers
num_workers <- 400

# Define roles
roles <- c("Analyst", "Engineer", "Manager", "Intern", "Consultant")

# Initialize an empty list
workers <- list()

# Loop to generate worker data
for (i in 1:num_workers) {
  worker <- list(
    id = i,
    name = paste0("Worker_", i),
    email = paste0("worker", i, "@example.com"),
    role = roles[(i %% length(roles)) + 1],
    department = paste0("Department_", (i %% 10) + 1)
  )
  workers[[i]] <- worker
}

# Preview first few workers
print(workers[1:20])


set.seed(123)  # For reproducible random gender

# Define base salaries by role
salary_by_role <- list(
  Analyst = 12000,
  Engineer = 15000,
  Manager = 18000,
  Intern = 5000,
  Consultant = 10000
)

# Gender options
genders <- c("Male", "Female")

# Initialize workers list
workers <- list()

# Generate workers with extended attributes
for (i in 1:400) {
  role <- roles[(i %% length(roles)) + 1]
  gender <- sample(genders, 1)
  salary <- salary_by_role[[role]]
  
  worker <- list(
    id = i,
    name = paste0("Worker_", i),
    email = paste0("worker", i, "@example.com"),
    role = role,
    department = paste0("Department_", (i %% 10) + 1),
    gender = gender,
    salary = salary
  )
  workers[[i]] <- worker
}

# Generate payment slips
for (worker in workers) {
  tryCatch({
    name <- worker$name
    email <- worker$email
    role <- worker$role
    department <- worker$department
    gender <- worker$gender
    salary <- worker$salary
    employee_level <- "N/A"
    
    # Logic for assigning employee levels
    if (salary > 10000 && salary < 20000) {
      employee_level <- "A1"
    }
    
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      employee_level <- "A5-F"
    }
    
    # Print payment slip
    cat("--- Payment Slip ---\n")
    cat("Name:", name, "\n")
    cat("Email:", email, "\n")
    cat("Gender:", gender, "\n")
    cat("Department:", department, "\n")
    cat("Role:", role, "\n")
    cat("Monthly Salary: $", salary, "\n")
    cat("Employee Level:", employee_level, "\n")
    cat("--------------------\n\n")
    
  }, error = function(e) {
    cat("Error for worker", worker$id, ":", e$message, "\n")
  })
}
