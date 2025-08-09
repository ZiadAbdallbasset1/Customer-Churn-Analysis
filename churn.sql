select Gender, count(*) as total,
round(count(Gender) * 1. / (select count(*) from Customer_Data),2) * 100 as percentagee
from Customer_Data
group by Gender


select Contract, count(*) as total,
round(count(Contract) * 1. / (select count(*) from Customer_Data),2) * 100 as percentagee
from Customer_Data
group by Contract

select Customer_Status, count(*) as total, SUM(Total_Revenue) as total_rev,
round(SUM(Total_Revenue) * 1. / (select SUM(Total_Revenue) from Customer_Data),2) * 100 as percentagee
from Customer_Data
group by Customer_Status


select *,SUM(case when * is null then 1 else 0)
from Customer_Data
group by *


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customer_Data';


SELECT
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Nulls,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Nulls,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Nulls,
    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Nulls,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Nulls,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Nulls,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Nulls,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Nulls,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Nulls,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Nulls,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Nulls,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Nulls,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Nulls,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Nulls,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Nulls,
    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Nulls,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Nulls,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Nulls,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Nulls,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Nulls,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Nulls,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Nulls,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Nulls,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Nulls,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Nulls,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Nulls,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Nulls,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Nulls,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Nulls,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Nulls,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Nulls,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Nulls
FROM Customer_Data;



SELECT
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    ISNULL(Value_Deal, 'none') AS Value_Deal,
    Phone_Service,
    ISNULL(Multiple_Lines, 'none') AS Multiple_Lines,
    Internet_Service,
    ISNULL(Internet_Type, 'none') AS Internet_Type,
    ISNULL(Online_Security, 'none') AS Online_Security,
    ISNULL(Online_Backup, 'none') AS Online_Backup,
    ISNULL(Device_Protection_Plan, 'none') AS Device_Protection_Plan,
    ISNULL(Premium_Support, 'none') AS Premium_Support,
    ISNULL(CAST(Streaming_TV AS VARCHAR), 'none') AS Streaming_TV,
    ISNULL(CAST(Streaming_Movies AS VARCHAR), 'none') AS Streaming_Movies,
    ISNULL(CAST(Streaming_Music AS VARCHAR), 'none') AS Streaming_Music,
    ISNULL(CAST(Unlimited_Data AS VARCHAR), 'none') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    ISNULL(Churn_Category, 'none') AS Churn_Category,
    ISNULL(Churn_Reason, 'none') AS Churn_Reason
INTO Customer_Data_Cleaned
FROM Customer_Data


