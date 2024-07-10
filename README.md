OTC markets analysis by Lily, Mahdi, Rubyat, George

Setting up dbt
Connecting PowerBI/Tableau to Snowflake
Create the ELT

This repository contains scripts and documentation for analyzing OTC markets using various tools and platforms.

Table of Contents
* Project Description
* Project Steps
* Installation
* Usage
* Files and Directories
* Contributing
* License
  
Project Description
The OTC Market Analysis project aims to provide a comprehensive analysis of OTC markets. This project involves setting up a data warehouse, connecting to visualization tools like PowerBI/Tableau, and creating ELT pipelines.

Project Steps
1. Understand the Business Requirements:
    * Business Process
    * Functional Requirements
    * Data Requirements
2. Business Problem:
    * Describe the company and OTC markets.
    * Identify business and functional requirements.
    * Assess risks, costs, and benefits.
3. Business Persona:
    * Identify users and actors (students, recent graduates, businesses, investors).
Phases
1. Planning and Initial Setup:
    * Group meeting, task allocation.
    * Define business problem and impact.
    * Identify business personas.
2. Data Collection and Initial Setup:
    * Identify and collect data sources.
    * Create initial diagrams (Information Architecture, Data Architecture, Dimensional Modeling).
3. Data Processing and Architecture Design:
    * Source and transform data.
    * Update diagrams and documentation.
4. Development and Testing:
    * Develop ETL/ELT pipelines.
    * Set up Data Warehouse.
    * Develop web-based application for data visualization.
5. Finalization and Presentation:
    * Create visualizations.
    * Update GitHub repository.
    * Prepare for presentation.
      
Installation
To set up the project locally, follow these steps:
1. Clone the repository: bashCopy code  git clone https://github.com/MahdiT54/OTCmarketanalysis.git
2. cd OTCmarketanalysis
3.   
4. Set up the data warehouse:
    * Use the dw_snowflake_script.sql file to set up your Snowflake database.
5. Connect PowerBI/Tableau:
    * Follow the instructions provided to connect your data visualization tools to the Snowflake database.
  
Usage
1. Data Warehouse Setup:
    * Run the dw_snowflake_script.sql script to create the necessary tables and import data.
2. Data Analysis:
    * Use PowerBI or Tableau to connect to your Snowflake database and start analyzing the data.
Files and Directories
* dw_snowflake_script.sql: SQL script to set up the Snowflake database.
* index.html: HTML file for documentation or dashboard.
* otc_data_dictionary.xlsx: Excel file containing the data dictionary for the OTC market analysis.
