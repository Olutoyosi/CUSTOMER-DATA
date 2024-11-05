# CUSTOMER-DATA
This project analyzes customer data for a subscription service to uncover insights on customer segments, subscription trends, and churn patterns. Through a mix of Excel, SQL, and Power BI, we explore subscription behaviors, calculate average subscription duration, and identify high-churn regions.

# Project Title: 📊 Customer Segmentation Analysis for Subscription Service

## Introduction
In today’s competitive subscription market, understanding customer behavior is key to reducing churn and driving growth. This project focuses on analyzing customer data from a subscription service to identify trends, segment customers, and uncover insights into cancellations and renewals. By analyzing this data, we can help the business improve customer retention, optimize marketing strategies, and increase revenue.

## Project Goals

#### We aimed to address the following questions:

- What regions have the highest and lowest customer counts?
- Which subscription types are most popular, and which ones are driving revenue?
- Are there patterns in subscription cancellations, and which regions see the highest cancellation rates?
- What is the typical subscription duration, and who are the loyal customers with long-term subscriptions? "

## Data Exploration and Preparation

Our initial analysis focused on cleaning and understanding the raw customer data. By creating pivot tables in Excel, we could quickly view basic subscription patterns and identify areas for deeper analysis. For example, we calculated each customer’s subscription duration and identified the most popular subscription types, providing a foundation for segmentation and trend analysis.

### SQL Insights

In SQL, we tackled key questions by writing queries to isolate important trends:

- Popular Subscription Types: By counting unique customers per subscription type, we found that our Basic Plan is the most popular, covering 50% of all subscriptions.
- High Churn Regions: Our analysis revealed that North has the highest number of cancellations. This region accounted for over 30% of all canceled subscriptions, suggesting it may require targeted retention strategies.
- Subscription Duration: We calculated the average subscription duration and found that customers typically stay subscribed for about 12 months. However, some high-value customers have subscribed for more than 12 months, indicating potential for loyalty incentives."

### SQL Code Snippets
``` SQL
Retrieve the total number of customers from each region.--

Select  region, count(distinct Customerid) as total_customers 
from PROJECT_SQL
Group by region;

```
Explanation: This counts unique customers (customer_id) per region.

``` SQL
--Find the most popular subscription type by the number of customers.--

Select top 1 subscriptiontype, count(distinct customerid) as total_customers
From PROJECT_SQL
Group by subscriptiontype 
Order by total_customers desc;

```
Explanation: This counts unique customers for each subscription_type and orders by the highest count to find the most popular type.


## Power BI Dashboard

To make our findings actionable, we developed an interactive Power BI dashboard. Here’s what it includes:

- Customer Overview: A Line chart showing customer distribution by region, allowing easy identification of our most and least active areas.
- Subscription Trends: A pie chart displaying total revenue by subscription type, highlighting our most profitable plans.
- Cancellations Analysis: A donut chart to show the proportion of active vs. canceled subscriptions, and a matrix of cancellations and subscription type by region, enabling teams to identify cancellation hotspots.
- Interactive Slicers: Slicers for region, subscription type, and status allow users to explore specific segments dynamically, offering insights at a granular level."

## Key Insights and Recommendations

Based on our analysis, we recommend the following actions:

- Targeted Retention Campaigns: Since North shows a high churn rate, we suggest a targeted retention campaign focusing on this area, including personalized incentives and offers.
- Focus on High-Value Plans: With the Basic Plan generating significant revenue, a customer success program could encourage upgrades and longer commitments.
- Loyalty Program for Long-Term Subscribers: For customers with subscriptions over 12 months, introduce a loyalty program to reward their commitment and further reduce churn risk.

## Technical Documentation

Excel
![EXCEL ](https://github.com/user-attachments/assets/b80ae4ee-4bf6-4a5e-827c-090fadb81ab3)

![CUSTOMER DATA- PIVOT TABLES](https://github.com/user-attachments/assets/dc86764b-8f7f-4601-a921-434e271b6454)

SQL Queries
See the SQL files in Readme for each of the queries used in this project

Power BI Dashboard

![POWER BI DASHBOARD-Customer Data](https://github.com/user-attachments/assets/12fa2ba9-e53e-45b9-861b-7bdd3b18b086)


## Conclusion

This project highlights the power of data analysis in understanding and improving customer relationships. By identifying key segments, tracking subscription patterns, and analyzing cancellation trends, the business is now equipped with data-backed insights to increase retention, enhance customer experience, and drive growth.
