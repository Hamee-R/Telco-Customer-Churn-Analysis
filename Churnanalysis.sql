#Overall churn count 
select count(churn) from project.telco_customer_churn_cleaned;
select churn, count(churn) from project.telco_customer_churn_cleaned group by 1;

churn rate (%)
select churn, count(*) as count_of_churn, round((count(*) * 100)/(select count(*) from project.telco_customer_churn_cleaned),2) as percentage from project.telco_customer_churn_cleaned group by 1;

SELECT COUNT(*) AS total_customers,
       SUM(Churn = 'Yes') AS churned_customers,
       SUM(Churn = 'No') AS retained_customers,
       ROUND(SUM(Churn = 'Yes') * 100.0 / COUNT(*), 2) AS percentage_churned,
       ROUND(SUM(Churn = 'No') * 100.0 / COUNT(*), 2) AS percentage_retained
FROM project.telco_customer_churn_cleaned;

#churn by gender
select gender, count(churn) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#percentage churn by gender
select gender, count(churn) as churn_count, round(count(*) * 100/ (select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes' ),2) as churned_gender_percentage 
from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;

#senior citizens churn 
select SeniorCitizen, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#senior citizens churn percentage
select SeniorCitizen, count(*) as churn_count, round((count(*) * 100.0 )/ (select count(*) from project.telco_customer_churn_cleaned where churn = 'yes'), 2) 
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#partner churn
select Partner, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#partner churn percentage
select Partner, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Dependents churn
select Dependents, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Dependents churn percentage
select Dependents, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Churn by tenure group
select tenuregroup, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by tenure group 
select tenuregroup, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Churn by Contract
select Contract, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by Contract 
select Contract, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Churn by PaperlessBilling
select PaperlessBilling, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by PaperlessBilling 
select PaperlessBilling, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by PaymentMethod
select PaymentMethod, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by PaymentMethod 
select PaymentMethod, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by PhoneService
select PhoneService, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by PhoneService 
select PhoneService, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by InternetService
select InternetService, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by InternetService 
select InternetService, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by TechSupport
select TechSupport, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by TechSupport 
select TechSupport, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by StreamingTV
select StreamingTV, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by StreamingTV 
select StreamingTV, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Churn by StreamingMovies
select StreamingMovies, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by StreamingMovies 
select StreamingMovies, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;


#Churn by OnlineSecurity
select OnlineSecurity, count(*) as churn_count from project.telco_customer_churn_cleaned where churn = 'Yes' group by 1 order by 2 desc;
#Percentage Churn by OnlineSecurity 
select OnlineSecurity, count(*) as churn_count, round(count(*) * 100/(select count(*) from project.telco_customer_churn_cleaned where churn = 'Yes'),2)
as churned_percentage from project.telco_customer_churn_cleaned where churn = 'yes' group by 1 order by 2 desc;

#Average monthly charges
select AVG(MonthlyCharges) as Averagecharge from project.telco_customer_churn_cleaned where churn = 'Yes';

#Average monthly charges for churned vs retained customers
SELECT
    COUNT(*) AS total_customers,
    ROUND(
        AVG(CASE
            WHEN Churn = 'Yes' THEN MonthlyCharges
        END), 2
    ) AS avg_monthly_charges_churned,
    ROUND(
        AVG(CASE
            WHEN Churn = 'No' THEN MonthlyCharges
        END), 2
    ) AS avg_monthly_charges_retained
FROM project.telco_customer_churn_cleaned;
