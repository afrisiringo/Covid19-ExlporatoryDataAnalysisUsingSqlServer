# COVID-19 : Exploratory Data Analysis Using SQL Server

## Usage
To run the analysis, you'll need access to a SQL server instance and the datasets `CovidDeaths.xlsx` and `CovidVaccinations.xlsx`. The SQL scripts used for analysis are available in `COVID-19-EDA with SQL Server.sql`

## Project Overview
This project is an exploratory data analysis (EDA) of COVID-19 deaths and vaccination data using SQL Server. The analysis aims to uncover insights and patterns related to COVID-19 cases, deaths, and vaccination rates across various countries and continents.

## Dataset
The analysis is based on two datasets:

1. **COVID Deaths**: This dataset contains information about COVID-19 cases and deaths across diferent countries and over time.
2. **COVID Vaccination**: This dataset provides data on the number of people vaccinated against COVID-19 in different countries and dates.

The data covers the time range from January 2020 to April 2021.

## Analysis
The EDA covers the following aspects:

- Time range of the data

  ![date range](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/d484a1f3-ca63-4803-80a2-c8ec379d601a)
  
- Percentage of deaths to total COVID-19 cases

  ![percent 1](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/cb1eab19-702c-4484-8a91-310fc4f1b41e)

- Percentage of the population infected with COVID-19

  ![infection rate](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/4dae653a-3c26-4a64-8b6a-576fbe3cb357)

- Countries with the highest infection rates on each continent

  ![countries highest rate](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/885d0432-4919-421d-9858-ce87a64b203c)
  
- Countries with the highest number of deaths on each continent

  ![highest number](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/e95d3508-223c-4008-b68b-b218bcdd3b26)

- Total cases, total deaths, and death rates worldwide

  ![worldwide](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/2a641924-abb2-4942-a92c-9ad23b3ea98c)

- Percentage of the population that has received the COVID-19 vaccine per date
  
  ![vacc](https://github.com/afrisiringo/Covid19Deaths-ExlporatoryDataAnalysis/assets/151942031/fe30a3b1-5f68-48cc-9605-07effa7804cc)

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



