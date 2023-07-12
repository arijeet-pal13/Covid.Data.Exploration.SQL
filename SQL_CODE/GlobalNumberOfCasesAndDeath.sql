-- Global numbers of cases and deaths

SELECT date, SUM(new_cases) as total_cases, SUM(CAST(new_deaths as int)) as total_deaths, 
(SUM(CAST(new_deaths as int))/SUM(new_cases))*100 as DeathPercentage
FROM dbo.CovidDeaths
WHERE continent is not null
GROUP BY date 
ORDER BY 1,2 
