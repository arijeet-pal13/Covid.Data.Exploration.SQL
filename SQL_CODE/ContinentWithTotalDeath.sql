-- Continent with Total death


SELECT continent, MAX(CAST(total_deaths as int)) as TotalDeaths
FROM Project.dbo.CovidDeaths
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeaths DESC
