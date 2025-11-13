# 🚖 Ola Ride Booking Analysis

**Author:** Aditya Bhor  
**Tools Used:** Power BI | SQL  
**Files Included:**  
- `Bookingss.csv` — Dataset used for analysis  
- `Ola.pbip` — Power BI Project File  
- `Ola.pdf` — Exported Power BI Dashboard  
- `test.sql` — SQL queries and views used for data analysis  

---

## 📊 Project Overview
This project analyzes **Ola Ride Booking data** to uncover patterns in bookings, cancellations, revenues, and customer behavior.  
Using **SQL** for data cleaning and query-based analysis, and **Power BI** for visual storytelling, the project helps identify business insights and performance KPIs for ride-booking operations.

---

## 🎯 Objectives
- Analyze booking trends across time, distance, and fare.  
- Identify **top-performing customers**, **popular routes**, and **high-demand periods**.  
- Evaluate **driver and customer cancellation reasons**.  
- Visualize **key performance indicators (KPIs)** in Power BI.  

---

## 🧮 SQL Analysis
All queries are included in **`test.sql`**.

### 🔹 Key Queries Covered:
1. **Total Bookings** — Count of all bookings.  
2. **Successful Bookings View** — Completed rides.  
3. **Top 5 Customers** — Highest booking value customers.  
4. **Average Ride Distance by Vehicle Type.**  
5. **Cancellation Analysis** — Cancellations by customer and driver with reasons.  
6. **Total Booking Value (Revenue).**  
7. **Customer Ratings by Vehicle Type.**  
8. **Incomplete Ride Analysis** — Trips not completed and reasons.

> You can run the file directly in MySQL / PostgreSQL / SQL Server after importing the `Bookingss.csv` table.

**Example Query Snippet:**
```sql
-- View for successful bookings
CREATE VIEW Successful_Bookings AS
SELECT * FROM Bookingss
WHERE Booking_Status = 'Completed';


## 📈 Power BI Dashboard

The dashboard file **`Ola.pbip`** and its PDF export **`Ola.pdf`** include multiple visual reports.

### 🔸 Key Insights Visualized
- **Total Bookings:** ~5,893  
- **Total Booking Value:** ₹3M+  
- **Average Customer Rating:** by Vehicle Type  
- **Booking Status Breakdown:** Completed, Cancelled by Driver, Cancelled by Customer  
- **Top 5 Customers:** Highest Booking Value  
- **Revenue by Vehicle Type:** Mini, Prime, Micro, etc.  
- **Cancellation Reasons:** Personal Issue, Car Issue, Change of Plans, etc.  
- **Revenue by Payment Method:** Cash, Wallet, Credit, etc.  

> Each KPI and visual provides insights into ride trends and customer patterns for decision-making.

---

## 💡 Business Insights (Sample)
- **Peak Booking Hours:** Morning (8–10 AM) and Evening (6–8 PM)  
- **High-Demand Zones:** Airport & Downtown  
- **Most Common Cancellations:** Driver-side cancellations due to car issues  
- **Top Revenue Source:** Prime Sedan rides contribute the highest revenue share  
- **Payment Preference:** Wallet and UPI dominate cash usage  

> *(You can update these with real insights from your Power BI dashboard.)*

---

## 🧭 How to Use
1. Open **Power BI Desktop**  
2. Load the **`Ola.pbip`** file  
3. Ensure the dataset path points to **`Bookingss.csv`**  
4. Click **Refresh** to load the visuals  
5. Use filters (Date, City, Vehicle Type, Booking Status) to explore insights interactively  

---

## 🏁 Conclusion
The **Ola Ride Booking Analysis** project provides end-to-end insights into booking patterns, customer behaviors, and driver performance using **SQL + Power BI**.  
It demonstrates how **data-driven decision-making** can help improve customer satisfaction, optimize operations, and increase profitability for ride-hailing services.

