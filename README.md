This is a university group project aimed at designing and implementing a data warehouse and ETL pipeline using Microsoft SQL Server and SSIS. The project is based on the AdventureWorks database and focuses on building a dimensional model and creating insightful reports.

The structure of the used database can be seen in the follwing image:
https://txtrainingstore.blob.core.windows.net/db-backup-aw2019/AdventureWorksERD

## 🧠 Objective

To transform transactional data into a business-friendly star schema format and generate reports for key business questions such as sales by region, credit card types, online purchases, and purchase motivations.

## 👤 My Role

As a member of a 5-person team, my key contributions were:

- Co-designed the dimensional model (star schema) used in the data warehouse
- Created tables and wrote SQL scripts for the DW layer, including datatype conversions and constraints
- Implemented **Slowly Changing Dimension (SCD) logic** to maintain historical data (ValidFrom / ValidTo)
- Assisted in building **Power BI dashboards**

## 🛠️ Technologies Used

- Microsoft SQL Server
- SSIS (SQL Server Integration Services)
- T-SQL
- Dimensional Modeling (Star Schema)
- Power BI
- CSV for data ingestion

## 📂 Project Structure

- **docs/**: Project documentation and a seperate file about my responibilities
- **diagrams/**: ERD, star schema, and ETL flow visuals
- **scripts/**: Example SQL views and queries used for fact/dimension loading
- **src/**: The ETL processes in .dtsx files

## 📊 Example Reports - can be seen in the documentation only

- Sales per region
- Promotion-based sales analysis
- Credit card usage by province
- Online vs. personal purchases
- Tax overview by geography
- Purchase reasons by area

## 💡 What I Learned

- Designing ETL pipelines in SSIS and SQL
- Handling real-world data issues (type mismatches, SCDs, lookup failures)
- Importance of star schema clarity for reporting
- Debugging and collaboration in a team setting

## 🔄 Improvements I'd Make Today

If I were to rebuild this today, I would:
- Use Apache Airflow for ETL orchestration
- Use PostgreSQL or BigQuery as the DWH backend
- Add Python-based data validation scripts
- Publish the dashboards to Tableau Public or Power BI Service
