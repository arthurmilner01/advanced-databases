-- Query 1
-- TIMESTAMPDIFF() recommended by MySQL https://dev.mysql.com/doc/refman/8.4/en/date-calculations.html
-- for being optimal
SELECT 
p.first_name, p.last_name, 
TIMESTAMPDIFF(YEAR, p.dob, CURRENT_DATE()) AS age
FROM Person p;

-- Query 2
-- Using AVG on the age calculation used in query 1
-- Using ROUND on the calculated AVG to limit trailing zeros
SELECT 
    f.favourite_name AS drink_name, 
    ROUND(AVG(TIMESTAMPDIFF(YEAR, p.dob, CURRENT_DATE())), 1) AS average_age
FROM PersonFavourite pf
-- Join Person with PersonFavourite on person_id
JOIN Person p ON pf.person_id = p.person_id
-- Join Favourite table to get the drink information
JOIN Favourite f ON pf.favourite_id = f.favourite_id
-- Filter the results by only the favourites of type drink
WHERE f.favourite_type = 'Drink'
-- Group by drink name for average per drink
GROUP BY f.favourite_name;

-- Query 3
-- Using AVG on the age calculation used in query 1/2
-- Using ROUND on the calculated AVG to limit trailing zeros
SELECT 
    f.favourite_name AS activity_name, 
    ROUND(AVG(TIMESTAMPDIFF(YEAR, p.dob, CURRENT_DATE())), 1) AS average_age
FROM PersonFavourite pf
-- Join Person with PersonFavourite on person_id
JOIN Person p ON pf.person_id = p.person_id
-- Join Favourite with PersonFavourite on favourite_id
-- Needed to get favourite details
JOIN Favourite f ON pf.favourite_id = f.favourite_id
-- Filter by activity type and activity name (only hiking)
WHERE f.favourite_type = 'Activity' AND f.favourite_name = 'Hiking'
-- Group by hiking to return a single average
GROUP BY f.favourite_name;

-- Query 4
-- COUNT(DISTINCT pa.person_id) ensures person with multiple addresses in same city only counts
-- once in population sum
SELECT 
    c.city, 
    co.country_name AS country, 
    COUNT(DISTINCT pa.person_id) AS population
FROM PersonAddress pa
-- Join Address with PersonAddress on address_id
JOIN Address a ON pa.address_id = a.address_id
-- Join ZipCode with Address on address_id
JOIN ZipCode z ON a.zip_code_id = z.zip_code_id
-- Join City with ZipCode on zip_code_id
JOIN City c ON z.city_id = c.city_id
-- Join Country with City on city_id
JOIN Country co ON c.country_id = co.country_id
GROUP BY c.city, co.country_name
ORDER BY population ASC;

-- Query 5
SELECT 
    p.first_name, 
    p.last_name
FROM Person p
-- Join PersonAddress with Person on person_id
JOIN PersonAddress pa ON p.person_id = pa.person_id
-- Join Address with PersonAddress on address_id
JOIN Address a ON pa.address_id = a.address_id
-- Join Neighbour with Address on both neighbours
JOIN Neighbour n1 ON a.neighbour_1_id = n1.neighbour_id
JOIN Neighbour n2 ON a.neighbour_2_id = n2.neighbour_id
-- Filter by the neighbour name 'Neighbor C'
-- OR to check both neighbour 1 and 2
WHERE
    (n1.neighbour_first_name = "Neighbor" 
    AND n1.neighbour_last_name = "C")
    OR 
    (n2.neighbour_first_name = "Neighbor"
    AND n2.neighbour_last_name = "C");


