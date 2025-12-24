# 📊 Job Market Analysis using Pandas & Data Visualization

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-1.3+-green.svg)](https://pandas.pydata.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A comprehensive analysis of Indian job market trends using real-world job listings data. This project demonstrates professional data analysis workflows through careful data cleaning, feature engineering, and insight-driven visualizations.

---

## 📑 Table of Contents

- [Project Overview](#project-overview)
- [Key Features](#key-features)
- [Dataset](#dataset)
- [Project Structure](#project-structure)
- [Methodology](#methodology)
- [Key Insights](#key-insights)
- [Installation](#installation)
- [Usage](#usage)
- [Tools & Libraries](#tools--libraries)
- [Author](#author)

---

## 🎯 Project Overview

This project analyzes Indian job market trends using a large, real-world dataset of job listings sourced from Naukri (via Kaggle). The primary objective is to extract actionable insights about:

- **Hiring demand** across different locations
- **Experience requirements** in the job market
- **Salary behavior** and compensation trends
- **Skill dominance** and in-demand technologies
- **High-value roles** and their characteristics

The analysis is performed through careful data cleaning, feature engineering, and visualization—emphasizing **reasoning over automation**, **correctness over assumptions**, and **insight-driven visualization over decorative charts**.

> **Note:** This project focuses on data analysis and visualization. No machine learning models are used.

---

## ✨ Key Features

- ✅ **Real-world data handling** with messy, partially missing data
- ✅ **Non-destructive data cleaning** preserving data integrity
- ✅ **Iterative feature engineering** driven by actual data patterns
- ✅ **Purposeful visualizations** answering specific business questions
- ✅ **Reproducible workflow** with clear project structure
- ✅ **Professional documentation** reflecting industry best practices

---

## 📊 Dataset

- **Source:** [Kaggle - Naukri Job Listings Dataset](https://www.kaggle.com/)
- **Size:** ~22,000 job postings
- **Nature:** Real-world, messy, partially missing data
- **Collection Method:** Originally collected via web scraping

The dataset was originally collected via web scraping, but this project focuses strictly on post-collection analysis to ensure reproducibility and analytical clarity.

---

## 📁 Project Structure

```
Job-Market-Analysis/
│
├── data/
│   ├── raw/
│   │   └── job_listings_raw.csv
│   └── processed/
│       ├── cleaned_job_listings.csv
│       └── featured_job_listings.csv
│
├── analysis/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   └── 04_EDA_&_visualization.ipynb
│
├── outputs/
│   └── figures/
│       └── [generated visualizations]
│
├── requirements.txt
└── README.md
```

**Design Principle:** Each stage produces a new artifact. No step overwrites the output of a previous step, ensuring full reproducibility.

---

## 🔬 Methodology

### Step 1: Data Understanding

- Inspected schema, datatypes, and missing values
- Identified unusable or low-signal columns
- Validated logical constraints (experience ranges, salary formats)
- **Goal:** Understand the data before touching it

### Step 2: Data Cleaning

Performed non-destructive cleaning:

- Parsed experience ranges into numeric values
- Extracted salary min/max/average only where disclosed
- Normalized city names from noisy location strings
- Preserved missing values instead of guessing

**Output:** `cleaned_job_listings.csv`

### Step 3: Feature Engineering

Transformed cleaned data into analysis-ready signals:

**Engineered Features:**
- `ExperienceLevel` (Junior / Mid / Senior / Unknown)
- `SalaryBucket` (Low / Medium / High / Unknown)
- `SkillCount` (number of listed skill categories)
- `PrimarySkill` (functional skill grouping)
- `HighValueRole` (Senior + High salary)

Feature engineering was iterative and data-driven, not assumption-based.

**Output:** `featured_job_listings.csv`

### Step 4: Exploratory Data Analysis & Visualization

The core strength of this project lies in clear, purposeful visualizations, each answering a specific business question.

All insights are supported by clean Matplotlib and Seaborn visualizations, saved as reusable artifacts.

---

## 💡 Key Insights

### 🌍 Where are jobs concentrated?

- Hiring is highly **metro-centric**
- **Bangalore, Mumbai, and Hyderabad** dominate job demand

### 👨‍💼 What experience levels are most demanded?

- Market is **mid-level heavy**
- Entry-level roles exist but are not dominant
- Senior roles are fewer but critical

### 💰 How are salaries distributed?

- Salary distribution is **right-skewed**
- Most roles fall in **low-to-mid salary range**
- High-paying roles are rare but create a long tail

### 📈 Does experience guarantee higher salary?

- Salary increases with experience **on average**
- **Large variance** at every experience level
- Skill specialization and role type matter significantly

### 🛠️ Which skills dominate hiring?

- **Software Development** overwhelmingly dominates
- Non-technical roles form smaller, stable segments

### ⭐ What defines high-value roles?

- High-value roles are **rare**
- Concentrated in **metro cities**
- Predominantly **senior technical positions**

### 📊 Overall Insights

- The job market is **geographically centralized** and **technology-driven**
- Companies favor **mid-level, ready-to-contribute** professionals
- Salary is influenced by experience but **heavily shaped by skills and role type**
- Premium compensation requires the intersection of **seniority, specialization, and location**

---

## 🚀 Installation

### Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

### Setup

1. Clone the repository:
```bash
git clone https://github.com/ParthRaval20-pr/Job-Market-Analysis.git
cd Job-Market-Analysis
```

2. Install required packages:
```bash
pip install -r requirements.txt
```

### Required Packages

The project uses the following Python libraries (install via `requirements.txt`):

- `pandas` - Data manipulation and analysis
- `numpy` - Numerical computing
- `matplotlib` - Data visualization
- `seaborn` - Statistical data visualization
- `jupyter` - Interactive notebook environment

---

## 📖 Usage

1. **Navigate to the analysis directory:**
```bash
cd analysis
```

2. **Open Jupyter Notebook:**
```bash
jupyter notebook
```

3. **Run notebooks in sequence:**
   - `01_data_understanding.ipynb` - Explore the raw dataset
   - `02_data_cleaning.ipynb` - Clean and preprocess data
   - `03_feature_engineering.ipynb` - Create new features
   - `04_EDA_&_visualization.ipynb` - Generate insights and visualizations

4. **View outputs:**
   - Processed datasets are saved in `data/processed/`
   - Visualizations are saved in `outputs/figures/`

---

## 🛠️ Tools & Libraries

- **Python** - Programming language
- **NumPy** - Numerical computing
- **Pandas** - Data manipulation and analysis
- **Matplotlib** - Data visualization
- **Seaborn** - Statistical data visualization
- **Jupyter Notebooks** - Interactive development environment

---

## 🎓 Why This Project Matters

This project demonstrates:

- ✅ **Real-world data handling** with imperfect datasets
- ✅ **Logical data cleaning** (not blind preprocessing)
- ✅ **Feature engineering** aligned with actual data patterns
- ✅ **Strong, insight-driven visualizations**
- ✅ **Reproducible and professional project structure**

> **This is not a tutorial project** — it reflects how data analysis is done in practice.

---

## 👤 Author

**Parth Raval**

- Aspiring Data Scientist
- Focused on fundamentals, reasoning, and real datasets

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🙏 Acknowledgments

- Dataset source: [Kaggle - Naukri Job Listings](https://www.kaggle.com/)
- Built with Python and open-source data science libraries

---

**⭐ If you find this project helpful, please consider giving it a star!**
