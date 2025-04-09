# 🧾 Worker Generator & Payment Slip Generator
This project contains both **Python** and **R** implementations for simulating employee data and generating payment slips . It was developed as part of my **Nexford University** programming assignment.

---

## 🎯 Assignment Objectives

The program must:

- ✅ Dynamically generate a list of **at least 400 workers**
- ✅ Use a **for loop** to iterate and generate payment slips
- ✅ Implement **conditional logic**:
  - If `salary > 10,000` and `< 20,000` → `Employee Level = A1`
  - If `salary > 7,500` and `< 30,000` **and** `gender == Female` → `Employee Level = A5-F`
- ✅ Include **exception handling** (Python)
- ✅ Provide both **Python** and **R** versions of the solution

This project includes R and Python scripts:
nexford first assignment(1).py
nexford assigment.R

---

## 📁 Contents


---

## 💡 Features

### ✅ Worker Profile Generator (`nexford first assignment(1).py`)

- Generates a customizable number of worker profiles.
- Each worker includes:
  - Unique ID
  - Name
  - Email
  - Role (from a rotating list)
  - Department (rotating through 10 departments)
- Stores the data in a Python list.

### ✅ Worker Payment Slip Generator (`nexford first assignment(1).py`)

- Adds:
  - Gender (randomly selected)
  - Salary (based on role)
  - Employee level (based on salary + gender rules)
- Includes exception handling for missing or malformed data.
- Outputs detailed, readable payment slips to the console.

### Sample Python Snippet:
<pre>
    for worker in workers:
        name = worker["name"]
        salary = worker["salary"]
        gender = worker["gender"]
        employee_level = "N/A"

        if 10000 < salary < 20000:
            employee_level = "A1"
        if 7500 < salary < 30000 and gender == "Female":
            employee_level = "A5-F"

</pre>
---

## 🧮 R Version: nexford_assigment.R
Key Features:
Replicates the logic from the Python script

Uses list() and for loop to simulate 400 employees

Dynamically assigns:

Role

Salary

Gender

Department

Applies the same conditional logic for employee levels

Generates formatted payment slips with cat()

Sample R Snippet:

<pre>
if (salary > 10000 && salary < 20000) {
  employee_level <- "A1"
}
if (salary > 7500 && salary < 30000 && gender == "Female") {
  employee_level <- "A5-F"
}
cat("--- Payment Slip ---\n")
cat("Name:", name, "\nSalary: $", salary, "\nLevel:", employee_level, "\n")
</pre>
---

## 🧪 Sample Output

### Example Payment Slip:


