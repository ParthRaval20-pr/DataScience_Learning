# Employee Compensation, Performance & Attrition Analysis

## Project Overview
This project analyzes employee compensation, performance, and attrition patterns using **NumPy, Pandas, Matplotlib, and Seaborn**.  
The goal is to simulate a real-world HR analytics task: transform raw employee data into actionable business insights through structured analysis and visualization.

The project emphasizes:
- Data correctness before analysis
- Feature engineering driven by business logic
- Insight-first visualization (not decorative charts)

---

## Business Questions Addressed
The analysis focuses on the following core questions:

1. Which departments experience the highest employee attrition?
2. Is attrition related to salary, experience, or performance?
3. Are junior employees leaving at higher rates than senior employees?
4. Does compensation align with experience, and where are mismatches occurring?
5. Is attrition concentrated among low-value or high-value employees?

---

## Dataset
The dataset is **synthetically generated** to reflect realistic organizational behavior.

### Key Characteristics
- 600 employee records
- Logical relationships enforced:
  - Salary depends on department and experience
  - Attrition is probabilistic, not random
  - Experience, age, and tenure are time-consistent

### Columns
- `EmployeeID`
- `Age`
- `Department`
- `JobRole`
- `JoinDate`
- `YearsAtCompany`
- `TotalExperience`
- `Salary`
- `PerformanceRating`
- `Attrition`

---

## Project Structure

employee-attrition-analysis/
│
├── data/
│ ├── raw/
│ │ └── employee_data.csv
│ └── processed/
│ ├── cleaned_employee_data.csv
│ └── featured_employee_data.csv
│
├── analysis/
│ ├── 01_data_generation.ipynb
│ ├── 02_data_cleaning.ipynb
│ ├── 03_feature_engineering.ipynb
│ ├── 04_exploratory_analysis.ipynb
│ └── 05_visualization.ipynb
│
├── outputs/
│ └── figures/
│
├── README.md


---

## Methodology

### Step 1: Data Generation
- Created a realistic employee dataset using NumPy and Pandas
- Embedded business logic:
  - Department-based salary bands
  - Experience-driven compensation
  - Probabilistic attrition influenced by salary, tenure, and performance

### Step 2: Data Cleaning
- Validated data types and logical constraints
- Ensured:
  - No impossible timelines
  - No invalid salary values
  - Datetime correctness for time-based analysis

### Step 3: Feature Engineering
Key engineered features:
- `SalaryPerExperience`
- `ExperienceLevel` (Junior / Mid / Senior)
- `PerformanceBand`
- `AttritionFlag`
- `EarlyTenureExitRisk`

These features convert raw data into analyzable signals.

### Step 4: Exploratory Analysis
- Attrition rate analysis by department, experience level, and performance
- Salary comparison between leavers and stayers
- Identification of early-tenure risk patterns

All insights were derived **before visualization**.

### Step 5: Visualization
Purpose-driven visualizations created using Matplotlib and Seaborn:
- Attrition rate by department
- Attrition by experience level
- Salary distribution (leavers vs stayers)
- Salary vs experience (attrition highlighted)
- Correlation heatmap (used last for confirmation)

---

## Key Insights
- Marketing and HR exhibit the highest attrition rates.
- Junior employees leave at significantly higher rates than mid or senior employees.
- Employees who leave tend to earn lower salaries on average.
- Salary strongly correlates with experience, while performance shows weaker correlation with attrition.
- Attrition is concentrated in early tenure, indicating onboarding or expectation gaps.

---

## Tools & Libraries
- Python
- NumPy
- Pandas
- Matplotlib
- Seaborn

No machine learning libraries were used.  
The focus is on **analysis and reasoning**, not prediction.

---

## Limitations
- Dataset is synthetic and may not capture all real-world factors (e.g., culture, management quality).
- Attrition relationships are simulated, not causal.
- Results should be interpreted as analytical signals, not business prescriptions.

---

## Conclusion
This project demonstrates a full analytics workflow:
**data → trust → signal → insight → visualization**.

It reflects how a data analyst approaches real HR problems: validating assumptions, engineering meaningful features, and communicating insights clearly without overfitting or overclaiming.

---

## Author
Parth Raval  
(Data Science Learner)
