Create database TOYOSI_LITA_PROJECT

select * from PROJECT_SQL

--retrieve the total number of customers from each region.--

Select  region, count(distinct Customerid) as total_customers 
from PROJECT_SQL
Group by region;

--find the most popular subscription type by the number of customers.-- 
Select top 1 subscriptiontype, count(distinct customerid) as total_customers
From PROJECT_SQL
Group by subscriptiontype 
Order by total_customers desc;

--- find customers who canceled their subscription within 6 months. --
Select customerid
From PROJECT_SQL
Where canceled =1 
and datediff(month, subscriptionstart, subscriptionend) <= 6;

--calculate the average subscription duration for all customers. --
Select avg(datediff(day, subscriptionstart, subscriptionend)) 
as avg_subscription_duration
From PROJECT_SQL

--find customers with subscriptions longer than 12 months.--
Select customerid
From PROJECT_SQL
Where datediff(month, subscriptionstart, subscriptionend) >12;

--calculate total revenue by subscription type.--
Select subscriptiontype,
Sum(revenue) as total_revenue 
From PROJECT_SQL
Group by subscriptiontype;

--- find the top 3 regions by subscription cancellations. ---
Select top 3 region,
Count(*) as subscriptionend_count
From PROJECT_SQL
Where subscriptionend is null
Group by region
Order by subscriptionend_count desc;

--find the total number of active and canceled subscriptions.--
select
  sum(case when canceled = 'No' then 1 else 0 End) as Active_Subscription,
  sum(case when canceled = 'yes' then 1 else 0 End) as Canceled_Subscription
From [dbo].[PROJECT_SQL]

alter table [dbo].[PROJECT_SQL]
alter column canceled varchar

SELECT 
    canceled,
    COUNT(*) AS TotalSubscriptions
FROM 
    PROJECT_SQL
GROUP BY 
    Canceled;