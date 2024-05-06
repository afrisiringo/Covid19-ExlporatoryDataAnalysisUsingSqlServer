/*

COVID-19 Data Exploration

Skills used: Joins, CTEs, Temp Tables, Window Functions, Aggregate Functions, Creating Views, Converting Data Type

Tool used : Microsoft SQL Server Management Studio

*/


-- Store the data that is going to be used into new tables.

SELECT continent, location, CAST(date AS date) AS date, population, total_cases, new_cases, CAST(total_deaths AS int) AS total_deaths, CAST(new_deaths AS INT) AS new_deaths 
INTO covid_deaths_EDA
FROM CovidDeaths
WHERE continent IS NOT NULL

SELECT * 
FROM covid_deaths_EDA

SELECT continent, location, CAST(date AS date) AS date, CAST(new_vaccinations AS int) AS new_vaccination
INTO covid_vacc_EDA
FROM CovidVaccinations

SELECT *
FROM covid_vacc_EDA

-- Shows the time range in the data.

SELECT MIN(date) AS start_date, MAX(date) as end_date
FROM covid_deaths_EDA


-- Shows the percentage of deaths to total COVID-19 cases.

SELECT continent, location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS deaths_percentage
FROM covid_deaths_EDA


-- Shows the percentage of the population infected with COVID-19.

SELECT continent, location, date, population, total_cases, (total_cases/population) * 100 AS infection_rate
FROM covid_deaths_EDA


-- Shows countries with the highest infection rate on each continent.

WITH ranked_infection_rate AS (
	SELECT 
		continent,
		location, 
		(total_cases/population) * 100 AS infection_rate,
		ROW_NUMBER() OVER (PARTITION BY continent ORDER BY ((total_cases/population) * 100)  DESC) AS Rank
	FROM covid_deaths_EDA
)
SELECT continent, location, infection_rate
FROM ranked_infection_rate
WHERE Rank = 1
ORDER BY infection_rate DESC


-- Shows each countries with the highest number of deaths on each continent.

WITH ranked_deaths AS (
	SELECT 
		continent,
		location, 
		total_deaths,
		ROW_NUMBER() OVER (PARTITION BY continent ORDER BY total_deaths  DESC) AS Rank
	FROM covid_deaths_EDA
)
SELECT continent, location, total_deaths
FROM ranked_deaths
WHERE Rank = 1
ORDER BY total_deaths DESC


-- Shows total cases, total deaths, and death rate worldwide.

SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, (SUM(new_deaths)/SUM(new_cases)) * 100 AS death_rate
FROM covid_deaths_EDA


-- Shows the percentage of the population that has received COVID vaccine per date.
WITH cd_join_cv (continent, location, date, population, new_vaccination, rolling_people_vaccinated) 
AS (
	SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccination
		   , SUM(cv.new_vaccination) OVER (PARTITION BY cv.location ORDER BY cv.location, cv.date) AS rolling_people_vaccinated
	FROM covid_deaths_EDA AS cd
	JOIN covid_vacc_EDA AS cv
		ON cd.location = cv.location
		AND cd.date = cv.date
)
SELECT *
, (rolling_people_vaccinated/population) * 100 AS percentage_people_vaccinated
FROM cd_join_cv


-- Creating view to store data for later visualizations
CREATE VIEW  PercentPeopleVaccinated AS
WITH cd_join_cv (continent, location, date, population, new_vaccination, rolling_people_vaccinated) 
AS (
	SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccination
		   , SUM(cv.new_vaccination) OVER (PARTITION BY cv.location ORDER BY cv.location, cv.date) AS rolling_people_vaccinated
	FROM covid_deaths_EDA AS cd
	JOIN covid_vacc_EDA AS cv
		ON cd.location = cv.location
		AND cd.date = cv.date
)
SELECT *
, (rolling_people_vaccinated/population) * 100 AS percentage_people_vaccinated
FROM cd_join_cv

SELECT *
FROM PercentPeopleVaccinated