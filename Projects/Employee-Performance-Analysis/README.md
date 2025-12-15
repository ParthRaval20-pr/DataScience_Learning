# Employee Performance & Salary Analysis (NumPy + Pandas)

## 📌 Project Overview
This project performs an end-to-end analysis of employee salary, performance, and hiring trends using **Python, NumPy, and Pandas**.

The goal of the project is to demonstrate:
- Data cleaning and preparation
- Numerical analysis using NumPy
- Business-focused analysis using Pandas
- Clear, actionable insights from structured data

This project intentionally avoids visualization libraries at this stage to focus on **core data analysis skills**.

## 📂 Project Structure

Employee-Performance-Analysis/
│
├── data/
│ └── employee_data.csv
│
├── analysis/
│ └── employee_analysis.ipynb
│
├── Outputs/
│ ├── top_salary_per_experience.csv
│ ├── bottom_salary_per_experience.csv
│ ├── department_summary.csv
│ ├── avg_salary_by_join_year.csv
│ └── final_employee_data.csv
│
└── README.md

## 🧾 Dataset Description
The dataset contains employee-level information such as:

- EmployeeID  
- Name  
- Department  
- Age  
- Experience (years)  
- Salary  
- PerformanceScore  
- JoinDate  

The dataset is small by design to emphasize **reasoning and correctness** rather than scale.

---

## 🛠 Tools & Libraries Used
- Python  
- Pandas  
- NumPy  
- Jupyter Notebook  

---

## 🔍 Analysis Performed

### 1️⃣ Data Cleaning & Preparation
- Loaded CSV data
- Verified column types and structure
- Converted `JoinDate` to datetime format for time-based analysis

### 2️⃣ NumPy-Based Statistical Analysis
- Mean salary
- Median experience
- Standard deviation of performance scores

### 3️⃣ Salary vs Experience Analysis
- Created `SalaryPerExperience` metric
- Identified employees potentially over- or under-compensated relative to experience

### 4️⃣ Department-Level Analysis
- Average salary per department
- Average performance score per department
- Employee count per department

### 5️⃣ Performance-Based Bonus Simulation
- Implemented bonus rules using NumPy vectorization
- Calculated bonus and final salary without loops

### 6️⃣ Time-Based Hiring & Salary Trends
- Extracted joining year from `JoinDate`
- Analyzed average salary trends over time

---

## 📊 Key Business Insights
- The Finance department has the highest average salary and strongest performance, indicating efficient compensation.
- The IT department has the largest headcount but lower average performance, suggesting improvement opportunities.
- Performance-based bonuses significantly increase payroll cost but help reward high performers.
- Some junior employees earn higher salary relative to experience than senior employees, which may require compensation review.
- Average salary of newer hires decreases over time, indicating cost-optimized hiring.
- Recommendation: Review senior compensation balance and align bonuses with long-term performance goals.

---

## 🚀 Future Improvements
- Add data visualizations using Matplotlib and Seaborn
- Expand dataset with more employees
- Include multi-year performance trends
- Convert analysis into a reusable Python script

---

## 👤 Author
**Parth Raval**  
Aspiring Data Analyst / Data Scientist