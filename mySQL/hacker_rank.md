https://www.hackerrank.com/challenges/revising-the-select-query/problem

Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:

CITY.jpg

      SELECT * FROM city WHERE population >100000 AND countrycode = "USA"

https://www.hackerrank.com/challenges/revising-the-select-query-2/problem

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows:
CITY.jpg

      SELECT name FROM city WHERE population > 120000 AND countrycode = 'USA'     

https://www.hackerrank.com/challenges/select-all-sql/problem

Query all columns (attributes) for every row in the CITY table.

The CITY table is described as follows:
CITY.jpg

      SELECT * FROM city

https://www.hackerrank.com/challenges/select-by-id/problem

Query all columns for a city in CITY with the ID 1661.

The CITY table is described as follows:
CITY.jpg

      SELECT * FROM city WHERE id = 1661

https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:
CITY.jpg

      SELECT * FROM city WHERE countrycode = 'JPN'

https://www.hackerrank.com/challenges/japanese-cities-name/problem

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:
CITY.jpg

SELECT name FROM city WHERE countrycode = 'JPN'

https://www.hackerrank.com/challenges/weather-observation-station-1/problem

Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:
Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

      SELECT city, state FROM station

https://www.hackerrank.com/challenges/weather-observation-station-3/problem

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

      SELECT DISTINCT city FROM station WHERE id % 2 = 0

https://www.hackerrank.com/challenges/weather-observation-station-4/problem

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because total number of records - number of unique city names = 3 - 2 = 1.
