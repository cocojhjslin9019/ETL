-- create vaccination table
DROP TABLE vaccinations;

CREATE TABLE vaccinations (
date date,
state TEXT,
people_vaccinated INT,
people_fully_vaccinated INT
);

SELECT * FROM vaccinations;

-- create mobility table

DROP TABLE us_mobility_2021;

CREATE TABLE us_mobility_2021 (
    date date,
    state TEXT,
    retail_and_rec_percent_change INT,
    grocery_and_pharmacy_percent_change INT,
    parks_percent_change INT,
    transit_stations_percent_change INT,
    workplace_percent_change INT,
    residential_percent_change INT
);

SELECT * FROM us_mobility_2021;

-- join two tables
SELECT vaccinations.date, vaccinations.state, vaccinations.people_vaccinated, vaccinations.people_fully_vaccinated, us_mobility_2021.retail_and_rec_percent_change, us_mobility_2021.grocery_and_pharmacy_percent_change,us_mobility_2021.parks_percent_change,us_mobility_2021.transit_stations_percent_change,us_mobility_2021.workplace_percent_change,us_mobility_2021.residential_percent_change
FROM vaccinations
JOIN us_mobility_2021
ON vaccinations.date = us_mobility_2021.date;