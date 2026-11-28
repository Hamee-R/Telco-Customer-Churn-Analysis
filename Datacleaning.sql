#creating cleaned table, adding extra column and converting columns to appropriate data types
CREATE TABLE project.telco_customer_churn_cleaned (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen VARCHAR(3),
    Partner VARCHAR(3),
    Dependents VARCHAR(3),
    tenure INT,
    PhoneService VARCHAR(3),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(15),
    PaperlessBilling VARCHAR(3),
    PaymentMethod VARCHAR(40),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(3),
    TenureGroup VARCHAR(15)
);

#populating table, substituting values
INSERT INTO project.telco_customer_churn_cleaned (
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn,
    TenureGroup
)
SELECT
    TRIM(customerID),
    TRIM(gender),
    CASE
        WHEN SeniorCitizen = 1 THEN 'Yes'
        WHEN SeniorCitizen = 0 THEN 'No'
        ELSE NULL
    END,
    TRIM(Partner),
    TRIM(Dependents),
    tenure,
    TRIM(PhoneService),
    TRIM(MultipleLines),
    TRIM(InternetService),
    TRIM(OnlineSecurity),
    TRIM(OnlineBackup),
    TRIM(DeviceProtection),
    TRIM(TechSupport),
    TRIM(StreamingTV),
    TRIM(StreamingMovies),
    CASE
        WHEN TRIM(Contract) = 'Month-to-month' THEN 'Monthly'
        WHEN TRIM(Contract) = 'One year' THEN 'Annually'
        WHEN TRIM(Contract) = 'Two year' THEN 'Biennially'
        ELSE TRIM(Contract)
    END,
    TRIM(PaperlessBilling),
    TRIM(PaymentMethod),
    CAST(TRIM(MonthlyCharges) AS DECIMAL(10,2)),
    CASE
        WHEN TotalCharges IS NULL
             OR TRIM(TotalCharges) = ''
        THEN 0.00
        ELSE CAST(TRIM(TotalCharges) AS DECIMAL(10,2))
    END,
    TRIM(Churn),
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN 'Short'
        WHEN tenure BETWEEN 13 AND 24 THEN 'Intermediate'
        WHEN tenure >= 25 THEN 'Long'
        ELSE NULL
    END
FROM project.telco_customer_churn;


#validating column count
SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'project'
AND TABLE_NAME = 'telco_customer_churn_cleaned';

#validating row count
select count(*) from project.telco_customer_churn_cleaned;

#confirming row count for renamed values 
SELECT
    SeniorCitizen,
    COUNT(*) AS customer_count
FROM project.telco_customer_churn_cleaned
GROUP BY SeniorCitizen;

#checking counts of renamed values
SELECT
    Contract,
    COUNT(*) AS customer_count
FROM project.telco_customer_churn_cleaned
GROUP BY Contract;

#checking completeness of new column values
SELECT
    TenureGroup,
    COUNT(*) AS customer_count
FROM project.telco_customer_churn_cleaned
GROUP BY TenureGroup;

select count(TenureGroup) from project.telco_customer_churn_cleaned;

#checking for substituted values for initial blanks and completeness
SELECT TotalCharges,
    COUNT(*) AS zero_totalcharges
FROM project.telco_customer_churn_cleaned
WHERE tenure = 0
AND TotalCharges = 0.00;

#checks for duplicate
select distinct count(customerID) from project.telco_customer_churn_cleaned;

#substituted/renamed columns
select customerID, SeniorCitizen, Contract, MonthlyCharges, TotalCharges, tenuregroup from project.telco_customer_churn_cleaned;






