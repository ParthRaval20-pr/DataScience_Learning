## 🛒 E-Commerce Decision Analytics

## 📊 End-to-End SQL + Python Analytics Project

    Not a Kaggle notebook.
    Not toy data.
    A real analytics pipeline focused on decisions.

 🚀 Project Overview

    This project simulates a real-world e-commerce analytics system where data is:

 🧪 Generated programmatically (Python, NumPy, Pandas)

 🗄️ Stored & analyzed in MySQL

 📈 Visualized for business decision-making

    The goal is not to describe data —
    the goal is to support decisions.

 🎯 Business Questions Answered

    This project answers actionable questions, not vanity metrics:

 🧾 Which product categories generate the most revenue?

 🌆 Which cities have high vs low Average Order Value (AOV)?

 👥 How concentrated is customer revenue?

 📉 Do top customers follow the 80/20 Pareto rule?

 💳 Where is revenue leaking due to payment failures?

 🧠 Tech Stack
    Layer	Tools
    🗄️ Database	MySQL
    📜 SQL	Joins, Aggregations, Subqueries, Business Metrics
 🐍 Python	Pandas, NumPy
 📊 Visualization	Matplotlib, Seaborn
 ⚙️ Data Engineering	Synthetic data generation

## 🗂️ Project Structure
```
ecommerce-decision-analytics/
│
├── data/
│   └── generated/
│       ├── users.csv
│       ├── categories.csv
│       ├── products.csv
│       ├── orders.csv
│       ├── order_items.csv
│       └── payments.csv
│
├── sql/
│   ├── schema/
│   │   ├── create_database.sql
│   │   ├── create_tables.sql
│   │   └── constraints_indexes.sql
│   ├── basic/
│   │   └── 01_repeat_customers.sql
│   ├── intermediate/
│   │   ├── 02_revenue_by_category.sql
│   │   └── 03_city_performance.sql
│   └── advanced/
│       ├── 04_customer_ltv.sql
│       ├── 05_pareto_top_customers.sql
│       ├── 06_high_value_one_time_customers.sql
│       └── 07_payment_failure_analysis.sql
│
├── python/
│   └── data_generation/
│       └── 01_generate_synthetic_data.ipynb
│
├── analysis/
│   └── sql_insights_visualization.ipynb
│
├── outputs/
│   └── figures/
│       ├── revenue_by_category.png
│       ├── city_avg_order_value.png
│       ├── customer_ltv_distribution.png
│       ├── pareto_curve.png
│       └── payment_failure_revenue_loss.png
├── PROJECT_OVERVIEW.md
└── README.md
```

🧪 Data Generation (Python)

 👤 1000+ users with realistic names & cities

 📦 Products mapped to categories

 🛍️ Orders with repeat-customer behavior

 💸 Payments including failures

 📉 Revenue skewed intentionally (Pareto-like)

 👉 This replaces static Kaggle datasets with engineered realism.

 🗄️ Database Design (MySQL)

 ✅ Normalized schema

 🔑 Primary & Foreign Keys

 ⚡ Indexes for analytics

 📥 Bulk CSV loading

    Tables

    users

    categories

    products

    orders

    order_items

    payments

 📜 SQL Analytics Performed

    All core metrics were computed in SQL first:

 📊 Revenue by category

 🔁 Repeat customer analysis

 🌆 City-wise AOV

 💰 Customer Lifetime Value (LTV)

 📉 Pareto (80/20) analysis

 💳 Payment failure impact

    Queries are organized by difficulty & depth:

    sql/basic
    sql/intermediate
    sql/advanced

 📈 Visualization & Decision Layer

    SQL insights are reproduced and visualized in Python to communicate decisions clearly.

 📌 Saved Visual Outputs

 🧾 Revenue by Category

 🌆 City Average Order Value

 👥 Customer LTV Distribution

 📉 Pareto Curve (80/20)

 💳 Payment Failure Revenue Loss

 All visuals are saved in:

    outputs/figures/

 🔍 Key Insights

 🔥 Revenue is highly concentrated

 👥 ~20% of customers generate ~80% of revenue

 🌆 High order volume ≠ high value

 💳 Payment failures cause direct revenue loss

 🧠 Why This Project Stands Out

    This project demonstrates:

        ✅ End-to-end analytics thinking

        ✅ Strong SQL beyond SELECT *

        ✅ Realistic data engineering

        ✅ Clean separation of concerns
        (generation → storage → analysis → communication)

 📌 This is not a Kaggle EDA.
    It mirrors real analytics workflows.

 ⏭️ Next Steps

    📐 Statistics & Mathematics

    🔮 Forecasting & experimentation

    📊 Advanced analytics use cases

 👤 Author

    Parth Raval
    Aspiring Data Analyst / Data Science learner

    Focused on logic, correctness, and real-world analytics
