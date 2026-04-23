# 📊 Olist E-Commerce Analytics Platform

A production-grade **Business Intelligence solution built in Power BI** to analyze the Brazilian Olist marketplace ecosystem.

This project transforms **99K+ raw transactional records** into an **interactive decision-making platform** that enables stakeholders to monitor revenue performance, logistics efficiency, customer behavior, and seller contribution.

Using **Power BI, advanced DAX, and optimized star-schema data modeling**, the solution uncovers operational inefficiencies, revenue concentration risks, and customer retention opportunities across the marketplace.

---

# 🔗 Live Interactive Dashboard

Explore the live dashboard:

https://app.powerbi.com/view?r=eyJrIjoiMjIyYWM1MzYtY2I5MC00ODUyLWE5NjgtYTg2NzI2MjYzNzkxIiwidCI6IjE4MGU0OTAxLWVkZjktNDdhMC05NzU2LTA1OWJlMmZiMWNjMSJ9

---

# 📷 Dashboard Preview

![Home](images/0_Olist.gif)

---

# 🧠 Business Problem

E-commerce marketplaces generate large volumes of operational data across multiple systems:

• Orders
• Payments
• Logistics
• Customer reviews
• Seller activity

However, this data often remains fragmented, making it difficult for decision-makers to answer key questions:

• Which sellers drive most marketplace revenue?
• What operational factors impact delivery performance?
• Why is customer retention low?
• Which regions contribute most to revenue growth?

This project addresses these challenges by developing a **centralized analytics platform that converts raw marketplace data into actionable insights for strategic and operational decision-making.**

---

# 🏗 Data Architecture

The project implements a **star-schema data model optimized for analytical performance in Power BI.**

### Fact Tables

* Orders
* Order Items
* Order Payments
* Customer Reviews

### Dimension Tables

* Customers
* Sellers
* Products
* Geography
* Date

### Modeling Techniques

• Star schema modeling
• Fact-dimension separation
• Optimized relationship cardinality
• Time intelligence modeling
• Aggregation-ready measures

This structure supports efficient analytics across **99K+ marketplace transactions and multiple business dimensions.**

---

# 🛠 Technology Stack

### Power BI

* Interactive dashboard design
* KPI monitoring
* Drill-through analysis
* Business storytelling

### DAX

* Time intelligence metrics
* revenue calculations
* customer segmentation
* seller contribution analysis

### Power Query

* Data cleaning
* ETL transformation
* Schema preparation

### GitHub

* Version control
* Project documentation
* Portfolio presentation

---

# 📊 Key Business Metrics

| Metric               | Value      |
| -------------------- | ---------- |
| Total Revenue        | **15.84M** |
| Total Orders         | **99K**    |
| Total Customers      | **96K**    |
| Average Order Value  | **159.33** |
| Repeat Customer Rate | **~3%**    |
| Cancellation Rate    | **~0.63%** |

These metrics provide a high-level view of **marketplace performance, customer engagement, and operational stability.**

---

# 📈 Dashboard Modules

## Executive Overview
![Executive Summary](images/2_Executive_Summary.png)
Provides leadership with a **high-level view of marketplace performance.**

Key insights:

• Revenue trends over time
• Payment method distribution
• Top performing states
• Product category contribution

This page allows executives to **quickly evaluate revenue health and growth trends.**

---

## Operations Performance

Analyzes **logistics and delivery efficiency**, a critical driver of customer satisfaction.

Key analytics:

• On-time vs delayed deliveries
• Average delivery duration by state
• Impact of delivery delays on review scores
• Logistics performance distribution

This module highlights **operational inefficiencies impacting customer experience.**

![Operations](images/3_Operation_Performance.png)
---

## Growth Intelligence

Focuses on **customer lifecycle behavior and seller ecosystem dynamics.**

Key analytics:

• Repeat vs one-time customer segmentation
• Customer spending patterns
• Seller revenue contribution
• Marketplace growth trends

These insights help identify **customer retention opportunities and seller dependency risks.**

![Growth](images/Growth_Intelligence.png)
---

# 🔍 Key Insights

### Revenue Concentration Risk

"Pareto analysis reveals that the top 8% of sellers 
(~248 out of 3,095) generate approximately 52% of total 
marketplace revenue (R$8.2M of R$15.84M). The top 20 
sellers alone contribute R$2.1M (13.3%). 

If even 10% of these high-value sellers churned, the 
marketplace could face a potential monthly revenue 
decline of ~R$175K. This creates a critical vendor 
dependency risk requiring immediate diversification 
strategy."

---

### Customer Retention Opportunity

"Out of 96,096 unique customers, only 2,997 (~3.12%) 
made more than one purchase. Cohort analysis shows that 
of customers who do return, 72% place their second order 
within 45 days of the first purchase.

The one-time buyer segment represents approximately 
R$14.8M in first-purchase revenue — converting even 5% 
of these into repeat buyers could generate an estimated 
R$740K in incremental revenue, assuming similar AOV 
of R$159.33."

---

### Logistics Impacts Customer Satisfaction

"18.2% of delivered orders arrived after the estimated 
delivery date. These late orders received an average 
review score of 2.14 compared to 4.31 for on-time 
deliveries — a 50.3% score reduction.

Late deliveries generated 64% of all 1-star reviews. 
States with highest delay rates include Roraima (avg 
28.4 days), Amapá (26.1 days), and Amazonas (24.8 days) 
vs the platform average of 12.5 days.

Reducing late deliveries from 18% to 10% could 
potentially improve the platform's average review 
score from 4.07 to ~4.25."

---

### Regional Revenue Dominance

"São Paulo generates 41.1% of total revenue (R$6.51M), 
followed by Rio de Janeiro (12.9%) and Minas Gerais 
(11.7%). The top 3 states collectively account for 
65.7% of all marketplace revenue.

Meanwhile, the bottom 12 states combined contribute 
less than 5% (R$792K), indicating significant untapped 
market potential in Northern and Central-Western Brazil."

---

# 💡 Business Recommendations

Based on the analysis, several strategic opportunities emerge:

**Improve Customer Retention**

📌 FINDING: 
97% of customers never return. However, among the 3% 
who do, 72% repurchase within 45 days in categories 
like bed_bath_table, health_beauty, and sports_leisure.

🎯 ACTION:
Launch an automated email/SMS campaign on Day 30 
post-first-purchase offering 12% discount on 
related products in the customer's purchased category.

💰 ESTIMATED IMPACT:
Converting 5% of one-time buyers = ~4,650 additional 
orders × R$159 AOV = ~R$739K incremental annual revenue.

📐 SUCCESS METRIC:
Track 60-day repeat purchase rate — target moving 
from 3% to 5% within 6 months.

**Optimize Logistics Operations**

Focus on reducing delivery delays in underperforming regions to improve customer satisfaction and review scores.

**Diversify Seller Ecosystem**

Encourage onboarding of high-performing sellers to reduce revenue dependency on a small subset of vendors.

**Regional Market Expansion**

Invest in marketing and seller recruitment in high-potential states to drive marketplace growth.

---

# 🚀 Technical Highlights

Key technical features implemented in this project:

• Star-schema data modeling for analytical performance
• Advanced DAX calculations for business KPIs
• Interactive drill-through insights for deeper analysis
• Cross-filtered visual interactions for intuitive exploration
• Scalable dashboard design supporting multiple analytical perspectives

---

# 📂 Dataset

**Brazilian E-Commerce Public Dataset by Olist**

Source
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Dataset includes:

* orders
* payments
* sellers
* products
* customers
* logistics
* reviews

Total analyzed transactions: **99,000+**

---

# 👨‍💻 Author

**Lohit Sai**

Data Analyst | Business Intelligence Enthusiast

**Skills**

Power BI
SQL
Python
Data Modeling
Business Intelligence
Data Visualization

---

# ⭐ Support

If you find this project useful, consider giving the repository a **star ⭐**.

