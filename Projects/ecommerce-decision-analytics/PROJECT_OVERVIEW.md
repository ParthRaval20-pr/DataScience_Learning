## 🛒 E-commerce Decision Analytics

SQL-First | Business-Driven | End-to-End Analytics Project

## 📌 Project Overview

This project simulates a real-world e-commerce analytics environment where data is stored in a relational database and analyzed to support business decisions, not just generate charts.

The goal is to demonstrate the ability to:

Design and work with production-style databases

Write decision-oriented SQL queries

Use Python (Pandas, NumPy, Visualization) as a supporting analysis layer

Translate data into clear, actionable recommendations

This is not a Kaggle-style EDA project.
This project mirrors how analytics work is done in real companies.

The project is intentionally SQL-first to reflect how analytics is performed on production databases rather than flat files.

## 🎯 Business Problem

E-commerce companies collect large volumes of transactional data but often struggle to answer questions like:

Which customers are worth retaining?

Which product categories drive real revenue?

Which cities or segments look busy but are unprofitable?

Which payment methods cause revenue leakage?

Which customer cohorts perform best over time?

This project answers those questions using SQL-first analytics.

## 👥 Stakeholders & Decisions

1️⃣ Growth / Marketing Team

Decisions supported:

Who should be targeted for repeat purchases?

Which customer cohorts are high value?

Where should marketing spend be increased or reduced?

2️⃣ Product / Category Managers

Decisions supported:

Which categories generate revenue vs just volume?

Which products contribute most to total revenue?

Which products may be over-discounted?

3️⃣ Finance / Operations

Decisions supported:

Which cities generate many orders but low revenue?

Which payment methods fail or refund frequently?

Where is revenue leakage occurring?

4️⃣ Leadership

Decisions supported:

Who are the top 10% customers by lifetime value?

Which segments deserve premium treatment?

Where should strategic focus shift?

## 🗂️ Data Architecture

The project uses a relational database design, not flat files.

Core Tables:

users – customer information

categories – product classification

products – sellable items

orders – purchase events

order_items – line-item level transactions

payments – payment and refund tracking

This schema enables:

Multi-table joins

Window functions

Cohort analysis

Revenue and lifetime value computation

The dataset is synthetically generated to resemble realistic e-commerce transactions and is structured to enforce relational integrity.

## 🔧 Tech Stack & Tooling

Database

MySQL (SQL is the source of truth)

SQL

Joins, CTEs, subqueries

Window functions

Aggregations & ranking

Time-based analysis

Python

Used only where appropriate:

Pandas – validating SQL outputs, combining results

NumPy – percentiles, distributions, thresholds

Matplotlib / Seaborn – communicating insights visually

SQL performs the computation.
Python supports analysis and storytelling.

## 🧠 Project Workflow

Business questions defined before querying

Database schema designed to support decisions

Data loaded into relational tables

SQL queries written to answer decision-driven questions

Python used for validation & visualization

Insights translated into business actions

## 📊 Key Analyses (Planned)

Repeat customer identification

Customer lifetime value (LTV)

Cohort performance analysis

Revenue by category and city

Payment failure & refund analysis

Top customer ranking using window functions

## 📁 Repository Structure

```
ecommerce-decision-analytics/
├── database/      # schema, constraints, seed data
├── sql/           # business-driven SQL queries
├── python/        # validation & visualization
├── analysis/      # insights & decisions
├── outputs/       # figures & tables
└── README.md
```

## 🚫 What This Project Is NOT

❌ Not a Kaggle notebook

❌ Not CSV-first analysis

❌ Not ML-focused

❌ Not exploratory-for-fun

This is a decision analytics project, built to reflect real analytics work.

## ✅ Skills Demonstrated

Relational database design

Advanced SQL analytics

Business-driven thinking

End-to-end project execution

Clear communication of insights

## 🎯 Success Criteria

The project is considered complete when:
- Business questions are answered using SQL queries
- Results are validated and summarized clearly
- Insights lead to concrete, defensible decisions