# 💳 Credit Card Fraud Detection Analytics

## 📌 Project Overview

This project analyzes credit card transactions to identify fraudulent activities, explore transaction patterns, and highlight potential fraud-risk indicators using **PostgreSQL and Power BI**.

The project combines SQL-based data analysis with an interactive Power BI dashboard to transform transaction data into meaningful insights that support fraud monitoring and data-driven decision-making.

## 🎯 Project Objectives

- Analyze normal and fraudulent credit card transactions.
- Calculate the total number of transactions and overall fraud rate.
- Investigate fraud patterns across transaction amounts and elapsed-time periods.
- Analyze zero-value transactions and their relationship with fraud.
- Compare anonymized PCA features between normal and fraudulent transactions.
- Identify transaction segments that may require closer monitoring.

## 🛠️ Tools & Technologies

- **Dataset:** CSV
- **Database:** PostgreSQL
- **Data Analysis:** SQL
- **Data Visualization:** Microsoft Power BI
- **Documentation & Version Control:** GitHub


## 📊 Dataset Information

The dataset contains **284,807 transactions** and 31 columns, including transaction time, transaction amount, 28 anonymized PCA-transformed features, and a fraud classification label.

| Attribute | Description |
|---|---|
| `Time` | Elapsed seconds from the beginning of the dataset |
| `V1`–`V28` | Anonymized PCA-transformed transaction features |
| `Amount` | Transaction amount |
| `Class` | Target label: `0` = Normal, `1` = Fraud |

### Dataset Summary

- **Total transactions:** 284,807
- **Normal transactions:** 284,315
- **Fraudulent transactions:** 492
- **Fraud rate:** Approximately 0.173%
- **Original columns:** 31

The dataset is highly imbalanced because fraudulent transactions represent only a small proportion of all transactions.

## 🗄️ PostgreSQL Analysis

PostgreSQL was used to prepare and analyze the dataset through SQL queries.

### Key Analysis Areas

1. Total and fraudulent transaction counts.
2. Overall fraud rate and fraud amount.
3. Fraud rate across transaction amount categories.
4. Transaction volume and fraud patterns by elapsed-time period.
5. Zero-value transaction analysis.
6. Normal versus fraudulent transaction comparisons.
7. PCA feature comparison from `V1` through `V28`.
8. Fraud-risk monitoring priorities.

SQL techniques include aggregate functions, conditional logic, filtering, grouping, `CASE` expressions, and fraud-rate calculations.

## 📈 Power BI Dashboard

The interactive dashboard presents key performance indicators and transaction patterns in a visual format.

### Key KPIs

- Total Transactions
- Fraud Transactions
- Fraud Rate
- Fraud Amount
- Average Fraud Amount

### Dashboard Analysis

- **Fraud Overview:** Summarizes transaction volume and key fraud metrics.
- **Transaction & Risk Analysis:** Examines fraud rates by amount category, elapsed-time period, and zero-value status.
- **PCA Feature Comparison:** Compares average PCA feature values between normal and fraudulent transactions and highlights the largest differences.

Dashboard filters can be used to explore transaction categories and risk segments.

## 🔍 Key Findings

- Fraudulent transactions account for approximately **0.173%** of the original dataset.
- The dataset's class imbalance makes fraud-rate analysis especially important.
- Transaction amount and elapsed-time patterns provide useful dimensions for exploratory fraud analysis.
- Comparing PCA feature averages can help identify statistical differences between normal and fraudulent transactions.
- Fraud detection should not rely on a single feature or a high transaction amount alone.

## 💡 Recommendations

- Monitor suspicious transaction patterns and investigate unusual activity.
- Evaluate fraud rates across transaction segments rather than relying only on raw counts.
- Use appropriate methods to address class imbalance when developing predictive models.
- Validate potential fraud indicators with statistical analysis and model-performance testing.
- Treat analytical risk indicators as investigation signals, not definitive proof of fraud.

## ⚠️ Limitations

- The `V1`–`V28` columns are anonymized PCA-transformed features; their original business meanings are not available in this dataset.
- `Time` represents elapsed seconds, not a real-world date or clock timestamp.
- Descriptive analysis alone does not establish causation or create a validated fraud-detection model.
- A high-risk category should be validated before being used in operational decisions.

## ✅ Conclusion

This project demonstrates how **PostgreSQL and Power BI** can be used together to analyze credit card transactions, measure fraud patterns, compare transaction features, and communicate findings through an interactive dashboard.

It showcases practical skills in SQL querying, data analysis, KPI development, dashboard design, and business insight generation as part of my Data Analyst portfolio.

## 👨‍💻 Author

**Md Wasi Raza Quraishi**

Aspiring Data Analyst | SQL | Power BI | Python | Advanced Excel

- LinkedIn: [Connect with me](https://www.linkedin.com/in/md-wasi-raja-quraishi-360a46422/)
- GitHub: [Explore my projects](https://github.com/mdwasiquraishi-netizen)



