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

A relatively small group of sellers contributes a significant share of marketplace revenue, indicating **dependency risk on top-performing sellers.**

---

### Customer Retention Opportunity

Only **~3% of customers return for repeat purchases**, highlighting a major opportunity for **customer loyalty programs and retention strategies.**

---

### Logistics Impacts Customer Satisfaction

Delivery delays strongly correlate with **lower customer review scores**, suggesting logistics performance significantly influences customer perception.

---

### Regional Revenue Dominance

Certain Brazilian states contribute disproportionately to revenue, indicating opportunities for **regional expansion and targeted marketing initiatives.**

---

# 💡 Business Recommendations

Based on the analysis, several strategic opportunities emerge:

**Improve Customer Retention**

Implement loyalty programs, targeted promotions, and post-purchase engagement strategies to increase repeat purchases.

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

