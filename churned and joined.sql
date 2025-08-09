create view vw_churn as
	select * 
	from Customer_Data_Cleaned
	where Customer_Status in ('Churned','Stayed')


create view vw_joined as 
	select * 
	from Customer_Data_Cleaned
	where Customer_Status = 'Joined'
	
