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
