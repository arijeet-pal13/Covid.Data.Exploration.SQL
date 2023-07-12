-- Join Covid Death table and covid Vaccination table

SELECT * FROM Project..CovidDeaths as death
JOIN Project..CovidVaccinations as vac
ON death.location = vac.location
and death.date = vac.date



-- Total Population vs Vaccination

SELECT death.continent, death.location, death.date,death.population, vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations as int))
	OVER (PARTITION BY death.location ORDER BY death.location,death.date) as RollingCountVaccinated
FROM Project..CovidDeaths as death
JOIN Project..CovidVaccinations as vac
	ON death.location = vac.location
	and death.date = vac.date
WHERE death.continent is not null
ORDER BY 2,3
