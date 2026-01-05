# 📊 Job Market Analysis — India  
**End-to-End Data Analysis using Pandas & Visualization**

## Overview
This project analyzes Indian job market trends using real-world job listing data.  
The objective is to extract **defensible, data-backed insights** about hiring demand, experience requirements, salary behavior, skill dominance, and high-value roles through a disciplined analytics pipeline.

> **Important:**  
> - No machine learning is used  
> - Focus is on data cleaning, feature engineering, exploratory analysis, and visualization  
> - All insights are supported by visual evidence

---

## Dataset
- **Source:** Kaggle — Naukri Job Listings  
- **Size:** ~22,000 job postings  
- **Nature:** Real-world, noisy, partially missing data  

The dataset contains inconsistent formats for:
- Job location  
- Experience ranges  
- Salary disclosures  

This makes it suitable for **practical, industry-style data analysis** rather than toy examples.

---

## Objectives
- Identify cities with the highest job demand  
- Analyze experience-level distribution  
- Study salary distribution (where disclosed)  
- Examine the experience–salary relationship  
- Understand skill demand patterns  
- Identify characteristics of high-value roles  

---

## Project Pipeline
The project strictly follows this pipeline:

Raw Data → Cleaned Data → Feature Engineering → Insights → Visual Evidence

Each stage produces a new artifact.  
**No step overwrites the output of a previous step.**

---

## Project Structure

```
job-market-analysis/
│
├── data/
│ ├── raw/
│ │ └── job_listings_raw.csv
│ └── processed/
│ ├── cleaned_job_listings.csv
│ └── featured_job_listings.csv
│
├── analysis/
│ ├── 01_data_understanding.ipynb
│ ├── 02_data_cleaning.ipynb
│ ├── 03_feature_engineering.ipynb
│ └── 04_eda_visualization.ipynb
│
├── outputs/
│ └── figures/
│ ├── job_demand_by_city.png
│ ├── experience_level_distribution.png
│ ├── salary_distribution.png
│ ├── salary_vs_experience.png
│ ├── primary_skill_demand.png
│ └── high_value_roles_by_skill.png
│
└── README.md
```
---

## Workflow Details

### 1. Data Understanding
- Inspected schema, datatypes, and missing values  
- Identified low-signal and unusable columns  
- Validated realism of experience and salary fields  

---

### 2. Data Cleaning
- Selected only analytically relevant columns  
- Extracted primary city from noisy location strings  
- Parsed experience ranges into numeric values:
  - `Exp_Min`, `Exp_Max`, `Exp_Avg`
- Parsed salary ranges where explicitly disclosed  
- **No imputation performed** — missing values preserved intentionally  

**Output:**  
`cleaned_job_listings.csv`

---

### 3. Feature Engineering
Created analysis-ready features aligned strictly with dataset vocabulary:

- `ExperienceLevel` — Junior / Mid / Senior / Unknown  
- `SalaryBucket` — Low / Medium / High / Unknown  
- `SkillCount`  
- `PrimarySkill` — functional skill category  
- `HighValueRole` — Senior roles with high disclosed salary  

**Output:**  
`featured_job_listings.csv`

---

### 4. Exploratory Data Analysis & Visualization
Insight-driven analysis performed using **Matplotlib** and **Seaborn**:

- Job demand by city  
- Experience-level distribution  
- Salary distribution (disclosed salaries only)  
- Salary vs experience relationship  
- Skill demand by category  
- High-value roles by skill  

All plots are saved as reusable artifacts in:
outputs/figures/

---

## Key Insights
- Job demand is highly concentrated in metro cities, especially **Bangalore**
- The market is dominated by **mid-level professionals**
- Salary distribution is **right-skewed**, with few very high-paying roles
- Experience increases salary on average, but variance remains high
- **Software Development** dominates overall hiring
- High-value roles are rare and concentrated in senior technical positions

---

## Tools & Libraries
- Python  
- NumPy  
- Pandas  
- Matplotlib  
- Seaborn  

---

## Limitations
- Salary analysis is limited to postings with disclosed salary data  
- Skill information is categorical, not technology-specific  
- Results describe **market patterns**, not causation  

---

## Conclusion
This project demonstrates a **complete real-world data analysis workflow** focused on:

- disciplined data cleaning  
- meaningful feature engineering  
- insight-driven visualization  
- reproducible project structure  

It reflects how job-market analysis is actually performed using imperfect data.

---

## Author
**Parth Raval**  

_Data Science Learner_
