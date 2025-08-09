# Customer Churn Analysis & Prediction

# Overview
This project focuses on analyzing customer churn patterns, visualizing key insights, and predicting potential churners among new joiners.
It combines SQL-based data cleaning, Power BI dashboards, and a machine learning model to deliver both descriptive and predictive insights.

# Workflow
1. Data Cleaning (SQL)
Extracted raw customer data from the database.
Removed duplicates, handled missing values, and standardized formats.
Performed feature engineering (e.g., customer tenure, usage metrics).
Stored the cleaned dataset for analysis.

#2. Exploratory Data Analysis (Power BI)
Created interactive dashboards to explore:
  Churn rates by customer segment, region, and tenure.
  Usage behavior differences between churners and non-churners.
  Revenue impact of churn.
  Enabled filtering and drill-down for detailed insights.

#3. Predictive Modeling (Machine Learning)
Built an ML model to predict churn risk for new joiners.
Steps:
  Data preprocessing (encoding, scaling, balancing classes).
  Model training and evaluation (e.g., Logistic Regression, Random Forest, XGBoost).
  Selected the best-performing model based on accuracy, precision, recall, and AUC score.
  Output: Probability score for each new customer’s churn likelihood.

# Deliverables
SQL Scripts – Data cleaning & transformation.
Power BI Dashboard – Interactive churn analysis.
ML Model & Predictions – Predictive results for new joiners.

# How to Use
SQL
Run data_cleaning.sql to process raw data.
Power BI
Open churn_dashboard.pbix to explore the analysis.
ML Model
Use predict_new_customers.py to generate churn predictions.

# Insights
Identified top churn drivers (e.g., low engagement, billing issues).
Found high-risk customer segments.
Provided actionable recommendations for retention strategies.

# Future Improvements
Integrate model predictions directly into Power BI.
Automate daily data refresh and churn alerts.
Test additional advanced models (e.g., deep learning, survival analysis).

