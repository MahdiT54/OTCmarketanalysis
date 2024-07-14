OTC markets analysis by George, Lily, Mahdi, and Rubyat.

Setting up dbt, 
Connecting PowerBI/Tableau to Snowflake, 
Create the ELT

This repository contains scripts and documentation for analyzing OTC markets using various tools and platforms.

Table of Contents
* Business Problem
* Business Impact
* Business Persona
* Requirements
* Data
* Diagrams
* Methods
* Data Tools
* Interface
* Installation
* Usage
  
Business Problem:
OTC markets allow investors to trade stocks, bonds, and other financial instruments directly between two parties. Trading is done through a broker-dealer network (decentralized) rather than on a centralized exchange. Typically, smaller companies that have yet to be listed on major exchanges trade on such markets. In our case, Financeable LLC., an online finance teaching, smaller company is looking to jump into the OTC market.

Business Persona:
* Individual Investor: Interested in OTC markets.
* Professional Trader: Dealing with OTC securities on behalf of clients or for personal gain.
* Financial Analyst: Conducting market research and providing recommendations on OTC securities.
* Compliance Officer: Professionals ensuring that trading activities comply with regulatory requirements.
* Data Scientists/Algorithm Developer: specialize in machine learning and data analysis, developing predictive models and algorithms.
* IT/System Administrator: professionals managing the technical infrastructure of the trading system. 

Functional Requirements:
* Graph/historical diagram of all security (line chart).
* Most traded security type.
* Most traded security per year, month, week, and day.
* * Cumulative data per security.
* * Comparison over years, months, weeks, and days.
* Spread for each transaction (the difference between the bid and the ask).
* Classification for each company.
* Algorithm-based machine/deep learning.
* Develop BI intelligence for future predictions.

Data Requirements:
* https://www.otcmarkets.com/
* https://github.com/bukosabino/ta
* Otc_securities.csv
* companyInfo.csv
* EOD_Pricing_Specification_v1.7 1.pdf

Data:

Size:
Originally: 2193 KB; 8 rows, 16885 columns (pre-extraction).
Snowflake: 14.2 GB; 7 tables, 64.7M rows (post-extraction/raw).

Data Tools:
1. Data Storage: Azure SQL Database, Azure Blob Storage.
2. Data Processing: Snowflake.
3. Orchestration/Transformation: DBT.
4. Visualization: Tableau.
   
Installation:
To set up the project locally, follow these steps:
1. Clone the repository: bashCopy code  git clone https://github.com/MahdiT54/OTCmarketanalysis.git
2. cd OTCmarketanalysis
3. Set up the data warehouse:
    * Use the dw_snowflake_script.sql file to set up your Snowflake database.
5. Connect PowerBI/Tableau:
    * Follow the instructions provided to connect your data visualization tools to the Snowflake database.
  
Usage:
1. Data Warehouse Setup:
    * Run the dw_snowflake_script.sql script to create the necessary tables and import data.
2. Data Analysis:
    * Use PowerBI or Tableau to connect to your Snowflake database and start analyzing the data.
Files and Directories
* dw_snowflake_script.sql: SQL script to set up the Snowflake database.
* index.html: HTML file for documentation or dashboard.
* otc_data_dictionary.xlsx: Excel file containing the data dictionary for the OTC market analysis.
