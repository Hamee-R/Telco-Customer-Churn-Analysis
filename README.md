# Telco Customer Churn Analysis: Customer Retention Insights
#### Data Cleaning & Analysis: MySQL | Data Visualisation: Microsoft Excel

## Introduction

The Telco Customer Churn dataset contains information on 7,043 customers across 21 columns, covering customer demographics, account information, subscribed services, billing details and churn status. The dataset includes attributes such as CustomerID, Gender, SeniorCitizen, Partner, Dependents, Tenure, PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies, Contract, PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges and Churn.

The dataset provides information about customers who have either stayed with or discontinued the telecommunications company's services. It offers an opportunity to examine customer behaviour, identify patterns associated with churn and understand the characteristics of customers who are more likely to leave.

## Objectives

The primary objective of this project is to analyse the Telco Customer Churn dataset to identify patterns and factors associated with customer retention and attrition.

The specific objectives are to:

1. Examine the overall number and percentage of customers who have churned and those who have remained.

2. Analyse customer churn across demographic categories such as gender, senior citizenship, partner status and dependents.

3. Investigate the relationship between customer account characteristics, including tenure, contract type, paperless billing and payment method, and churn.

4. Examine how subscribed services, such as internet service, online security, technical support and streaming services, relate to customer churn.

5. Identify customer groups with higher churn rates and provide data-driven recommendations to improve customer retention.

## Dataset Source

The dataset is provided in CSV format and contains 7,043 rows (customer records) and 21 columns (attributes). It was obtained from Kaggle and is publicly available through the following link:
https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## Tools

MySQL: Used for data importation, data quality assessment, data cleaning, data type conversion, transformation and exploratory data analysis (EDA).

Microsoft Excel: Used exclusively for data visualisation, including PivotTables, PivotCharts and the development of a one-page customer churn dashboard.

## Exploratory Data Analysis (EDA)

Exploratory Data Analysis (EDA) techniques are applied to examine the dataset, understand the distribution of customer characteristics and identify patterns and relationships between the variables and customer churn.

The analysis is conducted using SQL queries involving functions and clauses such as SELECT, WHERE, GROUP BY, ORDER BY, COUNT and AVG. The findings are organised into three major areas:

Demographics: Analysis of churn across gender, senior citizenship, partner status and dependents.

Customer Account: Examination of tenure groups, contract types, paperless billing and payment methods in relation to churn.

Services: Investigation of churn patterns across phone services, internet subscriptions, online security, online backup, device protection, technical support and streaming services.

The results of the analysis will be used to identify key churn patterns, highlight areas of concern and develop recommendations for improving customer retention.


## Checking for empty rows and blanks:

<img width="1351" height="805" alt="image" src="https://github.com/user-attachments/assets/1b03b11e-e6b5-47d2-99d6-1d4d5ddf4b89" />

## Checking for duplicates
<img width="1363" height="801" alt="image" src="https://github.com/user-attachments/assets/122f6b96-d898-4fd8-8c2e-5a4bbd559641" />

### Creation of the Cleaned Dataset

A separate table, `telco_customer_churn_cleaned`, was created in MySQL to store the cleaned dataset while preserving the original imported table.

The cleaned dataset contains 22 columns: the original 21 attributes and the additional TenureGroup column.

The cleaned table uses appropriate data types for each column. Text attributes were assigned VARCHAR data types, tenure was stored as INT, and MonthlyCharges and TotalCharges were converted to DECIMAL(10,2).

The cleaning process also included trimming unnecessary spaces, converting SeniorCitizen values from 0/1 to No/Yes, replacing the 11 blank TotalCharges entries with 0.00, creating tenure categories and standardising contract values.

<img width="1347" height="856" alt="image" src="https://github.com/user-attachments/assets/23309c9f-f173-494d-b15e-ffc8bced61d7" />

### Validation of the Cleaned Dataset

After the cleaning process, SQL queries were used to validate the resulting table and confirm the number of records and columns.

<img width="1348" height="682" alt="image" src="https://github.com/user-attachments/assets/8dddc543-b888-4342-a56e-9ae3551b1d47" />


<img width="1349" height="832" alt="image" src="https://github.com/user-attachments/assets/bbeac4fd-42d7-4279-86ec-f8a0757968cf" />


