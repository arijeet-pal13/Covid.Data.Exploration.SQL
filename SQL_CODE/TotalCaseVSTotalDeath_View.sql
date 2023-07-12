--location,continent,population

DROP VIEW IF EXISTS PopulationByLocation

CREATE VIEW PopulationByLocation AS
SELECT continent,location,population
FROM Project.dbo.CovidDeaths
WHERE continent is not null
GROUP BY location,continent,population

SELECT * FROM PopulationByLocation

-- Total Cases vs total death

DROP VIEW IF EXISTS DeathPercentage

CREATE VIEW DeathPercentage AS
SELECT location,date,total_cases,new_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage 
FROM Project.dbo.CovidDeaths
WHERE continent is not null
--ORDER BY 1,2

SELECT * FROM DeathPercentage
