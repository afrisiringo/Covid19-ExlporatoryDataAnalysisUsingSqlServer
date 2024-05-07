# COVID-19 : Exlporatory Data Analysis Using SQL Server

## Overview
This project is an exploratory data analysis (EDA) of COVID-19 deaths and vaccination data using SQL Server. The analysis aims to uncover insights and patterns related to COVID-19 cases, deaths, and vaccination rates across various countries and continents.

## Dataset
The analysis is based on two datasets:

1. **COVID Deaths**: This dataset contains information about COVID-19 cases and deaths across diferent countries and over time.
2. **COVID Vaccination**: This dataset provides data on the number of people vaccinated against COVID-19 in different countries and dates.

The data covers the time range from January 2020 to April 2021.

## Analysis
The EDA covers the following aspects:

- Time range of the data
- Percentage of deaths to total COVID-19 cases
- Countries with the highest infection rates on each continent
- Countries with the highest number of deaths on each continent
- Total cases, total deaths, and death rates worldwide
- Percentage of the population that has received the COVID-19 vaccine per date

## Workflow
The analysis follows these steps:

1. **Data Storage**: Stored the data that is going to be used into new tables.
2. **Exploratory Data Analysis**: Various SQL techniques are employed to explore and analyze the data.
3. **View Creation**: A view is created to store the processed data for later visualization.

## Skills Utilized
The following SQL skills were utilized during the analysis:

- Joins
- Common Table Expressions (CTEs)
- Aggregate functions 
- Creating views (e.g., PARTITION BY, ROW_NUMBER)
- Data type conversion

## Getting Started 
To run the analysis, you'll need access to a SQL server instance and the datasets `CovidDeaths.xlsx` and `CovidVaccinations.xlsx`. The SQL scripts used for analysis are available in `COVID-19-EDA with SQL Server.sql`

