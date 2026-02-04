# SQL Project 1- Data Analyst, Data Science and other Data related Job Post Analysis
## Overview

This project uses SQL to investigate the data job market, focusing on salary trends, job roles, and required technical skills. Through structured queries and analysis, the project highlights key insights into what employers are looking for in data professionals.

## Source

The dataset used in this project was sourced from Luke Barousse’s GitHub, where he shares educational content and videos about data analytics and SQL.
https://drive.google.com/drive/folders/1moeWYoUtUklJO6NJdWo9OV8zWjRn0rjN

## Dataset Description

The dataset is organized into four main tables: job postings, company information, a master list of skills, and a table linking skills to specific job postings. It also includes detailed attributes such as job location, country, posting date and time, job board source, required skills, salary information, and other relevant job-related data.

## Tools & Technologies Used
  - PostgreSQL – Database management and SQL querying
  - Visual Studio Code (VS Code) – Development environment for writing and running SQL scripts
  - GitHub – Version control and project hosting

## Key Questions Being Explored Using SQL
### Query 1 – Top 10 Highest-Paying Data Analyst Jobs in India
Identifies the top 10 highest-paying Data Analyst and Senior Data Analyst roles in India (including remote positions) by filtering relevant job titles, selecting India-based companies, and ranking results by salary.
[View Code]- https://github.com/sahanashivakumar30/data_jobs_sql/blob/main/data_jobs_sql_files/data_explored/query_1.sql


### Query 2 – Top 10 Highest-Paying Remote Data Analyst Jobs (Global)
Identifies the top 10 highest-paying remote Data Analyst positions worldwide by filtering for Data Analyst roles with a remote (“Anywhere”) location and ranking them by average salary. The results include company name, job title, salary, country, and location.
[View Code]- https://github.com/sahanashivakumar30/data_jobs_sql/blob/main/data_jobs_sql_files/data_explored/query_2.sql

### Query 3 – Top 10 Most In-Demand Skills for Data Analyst Roles (Global)
Determines the top 10 most frequently required skills for Data Analyst roles worldwide by counting skill occurrences across job postings and ranking them by demand.
[View Code]- https://github.com/sahanashivakumar30/data_jobs_sql/blob/main/data_jobs_sql_files/data_explored/query_3.sql


### Query 4 – Top 10 Most In-Demand Skills for Data Analyst Roles (India & Remote)
Identifies the most commonly requested skills for Data Analyst positions in India and remote roles by filtering location and ranking skills based on frequency.
[View Code]- https://github.com/sahanashivakumar30/data_jobs_sql/blob/main/data_jobs_sql_files/data_explored/query_4.sql

  
### Query 5 – Skill Overlap Between Data Analyst and Other Data Roles
Analyzes how the top five Data Analyst skills (SQL, Python, Excel, Power BI, Tableau) appear in other data-related roles by excluding Data Analyst positions and measuring how often these skills are required elsewhere.
[View Code]- https://github.com/sahanashivakumar30/data_jobs_sql/blob/main/data_jobs_sql_files/data_explored/query_5.sql


