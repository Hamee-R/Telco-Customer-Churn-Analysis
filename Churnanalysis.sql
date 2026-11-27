#Overall churn count and churn rate (%)
select count(churn) from project.telco_customer_churn_cleaned;
select churn, count(churn) from project.telco_customer_churn_cleaned group by 1;
select churn, count(*) as count_of_churn, round((count(*) * 100)/(select count(*) from project.telco_customer_churn_cleaned),2) as percentage from project.telco_customer_churn_cleaned group by 1;

SELECT COUNT(*) AS total_customers,
       SUM(Churn = 'Yes') AS churned_customers,
       SUM(Churn = 'No') AS retained_customers,
       ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS percentage_churned,
       ROUND(SUM(Churn = 'No') * 100.0 / COUNT(*), 2) AS percentage_retained
FROM project.telco_customer_churn_cleaned;

#churn by gender
select gender, count(churn) from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1;


#seniorcitizen churn
select SeniorCitizen, count(*) from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1;
select SeniorCitizen, count(*) as churned_customers, round((count(*) * 100.0 )/ (select count(*) from project.telco_customer_churn_cleaned), 2) as SeniorCitizen_churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1;

#partner churn
select Partner, count(*) as churned_partners,round((count(*) * 100)/(select count(*) from project.telco_customer_churn_cleaned),2) as partner_churned_percentage from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1; 
