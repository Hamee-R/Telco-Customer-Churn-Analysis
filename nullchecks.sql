SELECT
    COUNT(*) AS total_records,
    SUM(customerID IS NULL OR TRIM(customerID) = '') AS missing_customerID,
    SUM(gender IS NULL OR TRIM(gender) = '') AS missing_gender,
    SUM(Partner IS NULL OR TRIM(Partner) = '') AS missing_partner,
    SUM(Dependents IS NULL OR TRIM(Dependents) = '') AS missing_dependents,
    SUM(tenure IS NULL) AS missing_tenure,
    SUM(MonthlyCharges IS NULL OR TRIM(MonthlyCharges) = '') AS missing_monthlycharges,
    SUM(TotalCharges IS NULL OR TRIM(TotalCharges) = '') AS missing_totalcharges,
    SUM(Churn IS NULL OR TRIM(Churn) = '') AS missing_churn
FROM project.telco_customer_churn;
