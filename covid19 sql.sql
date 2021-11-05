select * from covidvaccines;
select * from coviddeaths;

select count(*) from coviddeaths; 

select count(*) from covidvaccines; 

select * from coviddeaths order by 3,4;
select * from covidvaccines order by 3,4;

/*select the data that we are going to use */

select location, date, total_cases, new_cases, total_deaths,population
from coviddeaths
order by 1,2;

select location, sum(total_cases), sum(total_deaths), sum(population)
from coviddeaths
group by location
order by 1,2;

/* looking at Total cases vs total dealth  */

select location, date, total_cases, total_deaths, (total_deaths/total_cases) * 100 AS Deathpercentage
 from coviddeaths
 where location like "Ind%"
order by 1,2;


select distinct(location) from coviddeaths;
select distinct(location) from covidvaccines;

select location, date, total_cases, total_deaths, (total_deaths/total_cases) * 100 AS Deathpercentage
 from coviddeaths
 where location like 'AF%'
order by 1,2;

/* looking at the total cases vs population 
shows what percent of population got covid
 */

select location, date, total_cases, population, (total_deaths/population) * 100 AS Deathpercentage
 from coviddeaths
 where location like 'AF%'
order by 1,2;