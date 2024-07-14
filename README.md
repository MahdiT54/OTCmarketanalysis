OTC markets analysis by George, Lily, Mahdi, and Rubyat.

Setting up DBT, 
Connecting Tableau to Snowflake, 
Creating the ELT.

This repository contains scripts and documentation for analyzing OTC markets using various tools and platforms.

Table of Contents:
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


Business Requirements:
1. Revenue Growth
2. Market Expansion
   * Developed a comprehensive marketing strategy to attract and retain users.
   * Utilizing digital marketing, social media, and partnerships to reach target audiences.
3. Competitive Advantage 
4. User engagement and retention
   * Provide a superior trading experience with comprehensive data, tools, and support.
5. Strategic insights and innovation
   * Leverage data analytics for strategic decision-making and market predictions.
   * Foster a culture of continuous innovation and improvement.


Functional Requirements:
* Graph/historical diagram of all security (line chart).
* Most traded security type.
* Most traded security per year, month, week, and day.
  * Cumulative data per security.
  * Comparison over years, months, weeks, and days.
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

Strengths: 
* Comprehensive Descriptions
    * Detail-oriented: provides a rich context that enhances the interpretability and usability of the data. This level of detail helps analysts and users make informed decisions based on a thorough understanding of each security.
    * Depth of information: contributes to the creation of robust analytical models. It enables the development of sophisticated algorithms that consider a wide range of factors, leading to more accurate and actionable insights.
    * Enhanced user experience: allows them to quickly grasp the significance of data points, making the platform more user-friendly and accessible. It also supports educational initiatives, helping users understand complex financial concepts and market dynamics.
* Consistent Data Types
    * Uniformity: ensures that all values within a column adhere to a specific format; simplifies data cleaning, and preprocessing tasks, reducing the time and effort required to prepare the data for analysis.
    * Reduced errors
    * Ease of integration: facilitates the integration of the dataset with various analytical tools, machine learning frameworks, and database management systems.

Weaknesses:
* Limited Data Types
    * Lack of variety: consists of numerical and categorical data, which limits the scope of analysis.
    * Reduced analytical potential: restricts the range of analyses that can be conducted.
    * Constrain machine learning: machine learning models often benefit from a variety of data inputs.
* Missing Metadata
    * Contextual gaps: it is challenging to assess the reliability and relevance of the data since metadata provides essential context about the data (such as origin, collection methods, and quality).
    * Challenges in data management: proper metadata management is crucial for maintaining data quality and consistency over time.
    * Reduced data usability: leads to misinterpretations, resulting in incorrect analyses and flawed conclusions, reducing data's overall usability and value. 


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
