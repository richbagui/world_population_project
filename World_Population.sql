/* Total Population in 2022 and AVG Population */
SELECT SUM(`2022 Population`) AS Total_Population_2022, AVG(`2022 Population`) AS AVERAGE_POPULATION,
SUM(`Growth Rate`) AS World_Total_Growth_Rate
FROM population.world_population;

/*High and Low Population*/
SELECT `Country`, MAX(`2022 Population`) AS 'Most Populated Country', (SELECT `Country`
 FROM population.world_population WHERE `2022 Population`=510 ) AS 'Country',
(SELECT MIN(`2022 Population`)
 FROM population.world_population) AS 'Lowest Number of Population'
FROM population.world_population
GROUP BY `Country`
ORDER BY MAX(`2022 Population`) DESC
LIMIT 1;


/* Rank of Each COuntry and Population each year*/
SELECT `Rank`, `Country`, `1970 Population`, `1980 Population`, `1990 Population`,
`2000 Population`, `2010 Population`,`2015 Population`,`2020 Population`,`2022 Population`
FROM population.world_population
GROUP BY `Rank` 
ORDER BY `Rank`;

/*Total_Population_Per_Continent'*/
SELECT `Continent`, SUM(`2022 Population`) AS 'Total_Population_Per_Continent'
FROM population.world_population
GROUP BY `Continent`
ORDER BY SUM(`2022 Population`) DESC;

/*Area and Density of Countries*/
SELECT `Country`, `Area (kmÂ²)`, `Density (per kmÂ²)`
FROM population.world_population
GROUP BY `Country`;

/*Most dense country*/
SELECT `Country`, `Area (kmÂ²)`, `Density (per kmÂ²)` 
FROM population.world_population
GROUP BY `Country`
ORDER BY  `Density (per kmÂ²)` DESC 
LIMIT 5;

/*Least dense country*/
SELECT `Country`, `Area (kmÂ²)`, `Density (per kmÂ²)` 
FROM population.world_population
GROUP BY `Country`
ORDER BY  `Density (per kmÂ²)`
LIMIT 5;


