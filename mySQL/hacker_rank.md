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

select count(*) + 1 from (SELECT city FROM station GROUP BY 1 HAVING COUNT(*) > 1) as x

https://www.hackerrank.com/challenges/weather-observation-station-5/problem

    Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
    The STATION table is described as follows:

    Station.jpg

    where LAT_N is the northern latitude and LONG_W is the western longitude.

    Sample Input

    For example, CITY has four entries: DEF, ABC, PQRS and WXY.

    Sample Output

    ABC 3
    PQRS 4
    Explanation

    When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.

    Note
    You can write two separate queries to get the desired output. It need not be a single query.

SELECT city, CHAR_LENGTH(city) FROM station WHERE CHAR_LENGTH(city)=(SELECT CHAR_LENGTH(city) FROM station ORDER BY LENGTH(city) LIMIT 1) ORDER BY city LIMIT 1;
SELECT city, CHAR_LENGTH(city) FROM station WHERE CHAR_LENGTH(city)=(SELECT CHAR_LENGTH(city) FROM station ORDER BY LENGTH(city) DESC LIMIT 1) ORDER BY city LIMIT 1

https://www.hackerrank.com/challenges/weather-observation-station-6/problem


    Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

    Input Format

    The STATION table is described as follows:

    Station.jpg

    where LAT_N is the northern latitude and LONG_W is the western longitude.

Select city from station where SUBSTRING(city,1,1) in ('A','E','I','O','U') and SUBSTRING(city,1,1) in ('a','e','i','o','u')


https://www.hackerrank.com/challenges/weather-observation-station-7/problem?h_r=next-challenge&h_v=zen

    Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

    Input Format

    The STATION table is described as follows:

    Station.jpg

    where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT DISTINCT(city) 
FROM station 
WHERE SUBSTRING(city,-1,1) in ('A','E','I','O','U') and 
SUBSTRING(city,-1,1) in ('a','e','i','o','u')

https://www.hackerrank.com/challenges/weather-observation-station-8/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

    Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

    Input Format

    The STATION table is described as follows:

    Station.jpg

    where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT DISTINCT(city) FROM station WHERE city RLIKE '^[aeiouAEIOU].*.[aeiouAEIOU]$'

https://www.hackerrank.com/challenges/weather-observation-station-9/problem

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city 
FROM station 
WHERE city NOT RLIKE '^[AEIOU]';

https://www.hackerrank.com/challenges/weather-observation-station-10/problem

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE city NOT RLIKE '[AEIOU]$'

https://www.hackerrank.com/challenges/weather-observation-station-11/problem

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station WHERE city NOT RLIKE '^[AEIOU]' OR city NOT RLIKE '[AEIOU]$'

https://www.hackerrank.com/challenges/weather-observation-station-12/problem

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT city 
FROM station
WHERE city
NOT RLIKE '^[AEIOU]'
AND city
NOT RLIKE '[aeiou]$'

https://www.hackerrank.com/challenges/more-than-75-marks/problem?h_r=next-challenge&h_v=zen

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Only Ashley, Julia, and Belvet have Marks > . If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.

SELECT name 
FROM students 
WHERE marks > 75 
ORDER BY RIGHT(Name, 3), ID

https://www.hackerrank.com/challenges/name-of-employees/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

SELECT name 
FROM employee 
ORDER BY name

https://www.hackerrank.com/challenges/salary-of-employees/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

SELECT name
FROM employee
WHERE salary > 2000
AND months < 10