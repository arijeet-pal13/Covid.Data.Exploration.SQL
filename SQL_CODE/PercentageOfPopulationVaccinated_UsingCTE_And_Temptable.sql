-- Using CTE(Common Table Expression) Calculate Percentage of population vaccinated

WITH PopVsVac as 
(
SELECT death.continent, death.location, death.date,death.population, vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations as int))
	OVER (PARTITION BY death.location ORDER BY death.location,death.date) as RollingCountVaccinated
FROM Project..CovidDeaths as death
JOIN Project..CovidVaccinations as vac
	ON death.location = vac.location
	and death.date = vac.date
WHERE death.continent is not null
)
SELECT *, (RollingCountVaccinated/population)*100 as PercentageVaccinated
FROM PopVsVac
ORDER BY 2,3

------------------------------------------------------------------------------------
  --ANOTHER WAY USING TEMP TABLE
------------------------------------------------------------------------------------
-- Using Temp Table Calculate Percentage of population vaccinated

DROP TABLE IF EXISTS #PercentagePopulationVaccinated

CREATE TABLE #PercentagePopulationVaccinated
(
Continent nvarchar(100),
Location nvarchar(100),
Date datetime,
Population numeric,
New_Vaccination numeric,
RollingCountVaccinated numeric
)

INSERT INTO #PercentagePopulationVaccinated
SELECT death.continent, death.location, death.date,death.population, vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations as int))
	OVER (PARTITION BY death.location ORDER BY death.location,death.date) as RollingCountVaccinated
FROM Project..CovidDeaths as death
JOIN Project..CovidVaccinations as vac
	ON death.location = vac.location
	and death.date = vac.date
WHERE death.continent is not null


SELECT *, (RollingCountVaccinated/population)*100 as PercentageVaccinated
FROM #PercentagePopulationVaccinated
ORDER BY 2,3
