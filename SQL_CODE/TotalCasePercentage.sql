-- Total Cases VS Population
-- Percentage of people got affected in covid.

DROP VIEW IF EXISTS TotalCasePercentage

CREATE VIEW TotalCasePercentage as
SELECT location,date,total_cases,new_cases,population, (total_cases/population)*100 as CasesPercentage 
FROM Project.dbo.CovidDeaths
WHERE continent is not null
--ORDER BY 1,2

SELECT * FROM TotalCasePercentage
