# SQL-Portfolio
This repository showcases a selection of SQL projects that highlight my skills in data cleaning and exploratory data analysis (EDA). Each project includes well-structured SQL scripts and detailed explanations of my methodology and analytical approach.

---

## 📁 Projects Overview

### 🔧 [Wholesale Revenue Analysis – Motorcycle Parts Company](#wholesale-revenue-analysis--motorcycle-parts-company)  
Analyze net revenue by product line, month, and warehouse for wholesale orders only.

### 🧪 [Analyzing Students’ Mental Health in SQL](#analyzing-students-mental-health-in-sql)  
Explore how international students’ mental health is affected by the length of their stay in a foreign country.

---

## 🔧 Wholesale Revenue Analysis – Motorcycle Parts Company

### 📊 Project Overview  
A company selling motorcycle parts operates three warehouses and processes retail and wholesale orders with different payment fees. This project focuses on analyzing **net revenue** by **product line**, **month**, and **warehouse**, filtered only for **wholesale clients**.

### 📂 Dataset Details  
- Table: `sales`  
- Fields used: `date`, `product_line`, `warehouse`, `client_type`, `total`, `payment_fee`  
- Revenue calculation: `SUM(total * (1 - payment_fee))` (rounded to 2 decimals)

### 🎯 Objective  
- Filter for wholesale clients only  
- Group by product line, warehouse, and calendar month (June–August)  
- Order by product line, month (ascending), and revenue (descending)

### 💡 Business Insight  
- Identify high-performing product lines  
- Detect seasonal trends in wholesale  
- Optimize warehouse allocation and marketing spend

📄 **SQL Script:** See [`/wholesale_revenue_analysis/wholesale_revenue_analysis.sql`](./wholesale_revenue_analysis/wholesale_revenue_analysis.sql)

---

## 🧪 Analyzing Students’ Mental Health in SQL

### 📊 Project Overview  
In 2018, a Japanese university conducted a mental health survey among international and domestic students. This project uses SQL to explore whether international students exhibit stronger psychological stress indicators, and whether **length of stay** impacts mental health outcomes.

### 📂 Dataset Details  
- Table: `students`  
- Fields used: `student_type`, `length_of_stay`, `phq` (depression), `scs` (social connection), `as` (acculturative stress)  
- Focus: International students only

### 🎯 Objective  
- Analyze how `length_of_stay` impacts three key scores:
  - `PHQ` (depression)
  - `SCS` (social belonging)
  - `AS` (acculturation stress)  
- Present averages per length of stay in descending order

### 📈 Interpretation  
- Students who stay longer tend to feel more isolated but experience lower cultural stress  
- New arrivals are more likely to suffer from culture shock  
- Long stays may correlate with accumulated psychological strain

### 📌 Recommendations  
- Establish affordable mental health services for internationals  
- Introduce buddy and host family programs  
- Promote intercultural student organizations

📄 **SQL Script:** See [`/student_mental_health_analysis/mental_health_analysis.sql`](./student_mental_health_analysis/mental_health_analysis.sql)

---

## 📬 Contact

Feel free to reach out via GitHub or [LinkedIn](https://www.linkedin.com) if you'd like to connect or collaborate.

