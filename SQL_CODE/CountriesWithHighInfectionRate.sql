-- Countries with highest infection rate


SELECT location,MAX(total_cases) as HighestCases,population, MAX((total_cases/population))*100 as InfectedCasesPercentage 
FROM Project.dbo.CovidDeaths
WHERE continent is not null
GROUP BY location,population
ORDER BY InfectedCasesPercentage DESC

