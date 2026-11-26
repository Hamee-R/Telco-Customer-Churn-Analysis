#checks for duplication
    SELECT
    customerID,
    COUNT(*) AS IDcount
FROM project.telco_customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;
