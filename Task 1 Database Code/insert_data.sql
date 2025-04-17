-- Insert Person data
INSERT INTO Person (first_name, last_name, email, dob)
VALUES 
('Person', '1', 'person1@email.com', '1995-03-15'),
('Person', '2', 'person2@email.com', '1993-06-22'),
('Person', '3', 'person3@email.com', '1991-09-10'),
('Person', '4', 'person4@email.com', '1998-12-05'),
('Person', '5', 'person5@email.com', '1983-11-30'),
('Person', '6', 'person6@email.com', '1989-07-18'),
('Person', '7', 'person7@email.com', '1996-04-25'),
('Person', '8', 'person8@email.com', '1990-01-09'),
('Person', '9', 'person9@email.com', '1993-08-17'),
('Person', '10', 'person10@email.com', '1997-10-22'),
('Person', '11', 'person11@email.com', '1992-05-13'),
('Person', '12', 'person12@email.com', '1986-02-27'),
('Person', '13', 'person13@email.com', '1991-11-25'),
('Person', '14', 'person14@email.com', '1987-02-01'),
('Person', '15', 'person15@email.com', '1984-08-12'),
('Person', '16', 'person16@email.com', '1990-03-09'),
('Person', '17', 'person17@email.com', '1995-11-17'),
('Person', '18', 'person18@email.com', '1994-06-20'),
('Person', '19', 'person19@email.com', '1992-12-11'),
('Person', '20', 'person20@email.com', '1988-09-25');

-- Insert Country data
INSERT INTO Country (country_name) 
VALUES 
('England'), 
('Scotland'), 
('Wales');

-- Insert City data
-- Insert country ID by selecting on country name
INSERT INTO City (city, country_id) 
VALUES 
('London', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Manchester', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Birmingham', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Edinburgh', (SELECT country_id FROM Country WHERE country_name = 'Scotland')),
('Bristol', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Liverpool', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Glasgow', (SELECT country_id FROM Country WHERE country_name = 'Scotland')),
('Leeds', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Newcastle', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Cardiff', (SELECT country_id FROM Country WHERE country_name = 'Wales')),
('Sheffield', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Nottingham', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Cambridge', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Oxford', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Southampton', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Leicester', (SELECT country_id FROM Country WHERE country_name = 'England')),
('Norwich', (SELECT country_id FROM Country WHERE country_name = 'England'));

-- Insert Zip Code data
-- Insert city ID by selecting on city name
INSERT INTO ZipCode (zip_code, city_id)
VALUES 
('E1 6AN', (SELECT city_id FROM City WHERE city = 'London')),
('M1 2WD', (SELECT city_id FROM City WHERE city = 'Manchester')),
('CF10 3BC', (SELECT city_id FROM City WHERE city = 'Cardiff')),
('B1 1AB', (SELECT city_id FROM City WHERE city = 'Birmingham')),
('EH1 1YZ', (SELECT city_id FROM City WHERE city = 'Edinburgh')),
('BS1 3XE', (SELECT city_id FROM City WHERE city = 'Bristol')),
('L1 1AA', (SELECT city_id FROM City WHERE city = 'Liverpool')),
('G1 2TF', (SELECT city_id FROM City WHERE city = 'Glasgow')),
('LS1 3AB', (SELECT city_id FROM City WHERE city = 'Leeds')),
('NE1 2AB', (SELECT city_id FROM City WHERE city = 'Newcastle')),
('CF10 3AF', (SELECT city_id FROM City WHERE city = 'Cardiff')),
('S1 4GT', (SELECT city_id FROM City WHERE city = 'Sheffield')),
('NG1 2PB', (SELECT city_id FROM City WHERE city = 'Nottingham')),
('EH1 1AB', (SELECT city_id FROM City WHERE city = 'Edinburgh')),
('CF10 2NF', (SELECT city_id FROM City WHERE city = 'Cardiff')),
('CB1 2SE', (SELECT city_id FROM City WHERE city = 'Cambridge')),
('OX2 6TP', (SELECT city_id FROM City WHERE city = 'Oxford')),
('SO14 3HL', (SELECT city_id FROM City WHERE city = 'Southampton')),
('LE1 3PL', (SELECT city_id FROM City WHERE city = 'Leicester')),
('NR1 4BE', (SELECT city_id FROM City WHERE city = 'Norwich'));

-- Insert Neighbour data
INSERT INTO Neighbour(neighbour_first_name, neighbour_last_name, neighbour_email)
VALUES
('Neighbor', 'A', 'neighborA@email.com'),
('Neighbor', 'B', 'neighborB@email.com'),
('Neighbor', 'C', 'neighborC@email.com'),
('Neighbor', 'D', 'neighborD@email.com'),
('Neighbor', 'E', 'neighborE@email.com'),
('Neighbor', 'F', 'neighborF@email.com'),
('Neighbor', 'G', 'neighborG@email.com'),
('Neighbor', 'H', 'neighborH@email.com'),
('Neighbor', 'I', 'neighborI@email.com'),
('Neighbor', 'J', 'neighborJ@email.com'),
('Neighbor', 'K', 'neighborK@email.com'),
('Neighbor', 'L', 'neighborL@email.com'),
('Neighbor', 'M', 'neighborM@email.com'),
('Neighbor', 'N', 'neighborN@email.com'),
('Neighbor', 'O', 'neighborO@email.com'),
('Neighbor', 'P', 'neighborP@email.com'),
('Neighbor', 'Q', 'neighborQ@email.com'),
('Neighbor', 'R', 'neighborR@email.com'),
('Neighbor', 'S', 'neighborS@email.com'),
('Neighbor', 'T', 'neighborT@email.com'),
('Neighbor', 'U', 'neighborU@email.com'),
('Neighbor', 'V', 'neighborV@email.com'),
('Neighbor', 'W', 'neighborW@email.com'),
('Neighbor', 'X', 'neighborX@email.com'),
('Neighbor', 'Y', 'neighborY@email.com'),
('Neighbor', 'Z', 'neighborZ@email.com'),
('Neighbor', 'AA', 'neighborAA@email.com'),
('Neighbor', 'AB', 'neighborAB@email.com'),
('Neighbor', 'AC', 'neighborAC@email.com'),
('Neighbor', 'AD', 'neighborAD@email.com'),
('Neighbor', 'AE', 'neighborAE@email.com'),
('Neighbor', 'AF', 'neighborAF@email.com'),
('Neighbor', 'AG', 'neighborAG@email.com'),
('Neighbor', 'AH', 'neighborAH@email.com'),
('Neighbor', 'AI', 'neighborAI@email.com'),
('Neighbor', 'AJ', 'neighborAJ@email.com'),
('Neighbor', 'AK', 'neighborAK@email.com'),
('Neighbor', 'AL', 'neighborAL@email.com'),
('Neighbor', 'AM', 'neighborAM@email.com'),
('Neighbor', 'AN', 'neighborAN@email.com');

-- Insert Address data with reference to ZipCode (considering both zip_code and city) and Neighbours
INSERT INTO Address(street, zip_code_id, neighbour_1_id, neighbour_2_id) 
VALUES 
('12 Maple St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'E1 6AN' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'London')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborA@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborB@email.com')
),
('45 Oak Ave', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'M1 2WD' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Manchester')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborC@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborD@email.com')
),
('89 Pine Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'B1 1AB' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Birmingham')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborE@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborF@email.com')
),
('23 Birch St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'EH1 1YZ' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Edinburgh')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborG@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborH@email.com')
),
('67 Cedar Ln', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'BS1 3XE' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Bristol')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborI@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborJ@email.com')
),
('56 Elm St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'L1 1AA' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Liverpool')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborK@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborL@email.com')
),
('12 Maple St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'G1 2TF' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Glasgow')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborM@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborN@email.com')
),
('89 Oak Dr', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'LS1 3AB' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Leeds')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborO@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborP@email.com')
),
('123 Pine Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'NE1 2AB' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Newcastle')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborQ@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborR@email.com')
),
('15 Elm St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'CF10 3AF' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Cardiff')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborS@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborT@email.com')
),
('78 Oak Ln', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'S1 4GT' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Sheffield')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborU@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborV@email.com')
),
('56 Birch Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'NG1 2PB' 
     AND city_id = (SELECT city_id FROM City WHERE city = 'Nottingham')),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborW@email.com'),
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborX@email.com')
),
('10 Holy St', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'CF10 2NF'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Cardiff')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborY@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborZ@email.com')
),
('34 Willow Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'EH1 1AB'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Edinburgh')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAA@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAB@email.com')
),
('78 Cedar Ave', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'CB1 2SE'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Cambridge')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAC@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAD@email.com')
),
('45 Maple Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'OX2 6TP'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Oxford')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAE@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAF@email.com')
),
('23 Birch Ave', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'SO14 3HL'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Southampton')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAG@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAH@email.com')
),
('12 Elm Blvd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'LE1 3PL'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Leicester')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAI@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAJ@email.com')
),
('56 Oak Rd', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'NR1 4BE'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Norwich')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAK@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAL@email.com')
),
('89 Pine Ave', 
    (SELECT zip_code_id FROM ZipCode 
     WHERE zip_code = 'CF10 3BC'
     AND city_id = (SELECT city_id FROM City WHERE city = 'Cardiff')), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAM@email.com'), 
    (SELECT neighbour_id FROM Neighbour WHERE neighbour_email = 'neighborAN@email.com')
);

-- Insert PersonAddress data
-- Insert person ID by person email
-- Insert address ID by selecting on street and zip code
INSERT INTO PersonAddress (person_id, address_id) 
VALUES 
(
  (SELECT person_id FROM Person WHERE email = 'person1@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'E1 6AN'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person2@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'M1 2WD'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person3@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'B1 1AB'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person4@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'EH1 1YZ'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person5@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'BS1 3XE'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person6@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'L1 1AA'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person7@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'G1 2TF'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person8@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'LS1 3AB'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person9@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'NE1 2AB'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person10@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'CF10 3AF'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person11@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'S1 4GT'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person12@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'NG1 2PB'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person13@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'CF10 2NF'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person14@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'EH1 1AB'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person15@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'CB1 2SE'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person16@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'OX2 6TP'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person17@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'SO14 3HL'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person18@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'LE1 3PL'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person19@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'NR1 4BE'))
),
(
  (SELECT person_id FROM Person WHERE email = 'person20@email.com'),
  (SELECT address_id FROM Address WHERE zip_code_id = (SELECT zip_code_id FROM ZipCode WHERE zip_code = 'CF10 3BC'))
);

-- Insert Favourites
INSERT INTO Favourite(favourite_type, favourite_name)
VALUES
('Book', 'A New Beginning'),
('Book', 'The Road to Success'),
('Book', 'Endless Possibilities'),
('Book', 'Journey of Life'),
('Book', 'The Adventure Continues'),
('Book', 'Finding Inner Peace'),
('Book', 'Exploring New Horizons'),
('Book', 'The Great Journey'),
('Book', 'The Power of Change'),
('Book', 'New Beginnings Await'),
('Book', 'Wandering Souls'),
('Book', 'Freedom and Choice'),
('Book', 'Chasing Dreams'),
('Book', 'The Endless Journey'),
('Book', 'The Future Ahead'),
('Book', 'The Path to Glory'),
('Book', 'Life’s Adventure'),
('Book', 'Into the Wild'),
('Drink', 'Lemonade'),
('Drink', 'Coffee'),
('Drink', 'Smoothie'),
('Drink', 'Iced Tea'),
('Drink', 'Green Tea'),
('Drink', 'Coconut Water'),
('Drink', 'Fruit Juice'),
('Drink', 'Water'),
('Drink', 'Hot Chocolate'),
('Drink', 'Fruit Smoothie'),
('Drink', 'Sparkling Water'),
('Drink', 'Herbal Tea'),
('Drink', 'Iced Coffee'),
('Activity', 'Outdoor Running'),
('Activity', 'Hiking'),
('Activity', 'Swimming'),
('Activity', 'Traveling'),
('Activity', 'Gardening'),
('Activity', 'Reading'),
('Activity', 'Cycling'),
('Activity', 'Skiing'),
('Activity', 'Jogging'),
('Activity', 'Rock Climbing'),
('Activity', 'Yoga'),
('Activity', 'Running');

-- Insert PersonFavourite
-- Insert by selecting on the favourite name
INSERT INTO PersonFavourite(person_id, favourite_id)
VALUES
((SELECT person_id FROM Person WHERE email = 'person1@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'A New Beginning')),
((SELECT person_id FROM Person WHERE email = 'person2@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Road to Success')),
((SELECT person_id FROM Person WHERE email = 'person3@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Endless Possibilities')),
((SELECT person_id FROM Person WHERE email = 'person4@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Journey of Life')),
((SELECT person_id FROM Person WHERE email = 'person5@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Adventure Continues')),
((SELECT person_id FROM Person WHERE email = 'person6@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Finding Inner Peace')),
((SELECT person_id FROM Person WHERE email = 'person7@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Exploring New Horizons')),
((SELECT person_id FROM Person WHERE email = 'person8@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Great Journey')),
((SELECT person_id FROM Person WHERE email = 'person9@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Power of Change')),
((SELECT person_id FROM Person WHERE email = 'person10@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'New Beginnings Await')),
((SELECT person_id FROM Person WHERE email = 'person11@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Wandering Souls')),
((SELECT person_id FROM Person WHERE email = 'person12@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Freedom and Choice')),
((SELECT person_id FROM Person WHERE email = 'person13@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'New Beginnings Await')),
((SELECT person_id FROM Person WHERE email = 'person14@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Chasing Dreams')),
((SELECT person_id FROM Person WHERE email = 'person15@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Endless Journey')),
((SELECT person_id FROM Person WHERE email = 'person16@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Future Ahead')),
((SELECT person_id FROM Person WHERE email = 'person17@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Path to Glory')),
((SELECT person_id FROM Person WHERE email = 'person18@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Life’s Adventure')),
((SELECT person_id FROM Person WHERE email = 'person19@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Into the Wild')),
((SELECT person_id FROM Person WHERE email = 'person20@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'The Adventure Continues')),
((SELECT person_id FROM Person WHERE email = 'person1@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Lemonade')),
((SELECT person_id FROM Person WHERE email = 'person2@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Coffee')),
((SELECT person_id FROM Person WHERE email = 'person3@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Smoothie')),
((SELECT person_id FROM Person WHERE email = 'person4@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Iced Tea')),
((SELECT person_id FROM Person WHERE email = 'person5@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Green Tea')),
((SELECT person_id FROM Person WHERE email = 'person6@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Coconut Water')),
((SELECT person_id FROM Person WHERE email = 'person7@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Fruit Juice')),
((SELECT person_id FROM Person WHERE email = 'person8@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Water')),
((SELECT person_id FROM Person WHERE email = 'person9@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hot Chocolate')),
((SELECT person_id FROM Person WHERE email = 'person10@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Fruit Smoothie')),
((SELECT person_id FROM Person WHERE email = 'person11@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Sparkling Water')),
((SELECT person_id FROM Person WHERE email = 'person12@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Herbal Tea')),
((SELECT person_id FROM Person WHERE email = 'person13@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Smoothie')),
((SELECT person_id FROM Person WHERE email = 'person14@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Lemonade')),
((SELECT person_id FROM Person WHERE email = 'person15@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Iced Coffee')),
((SELECT person_id FROM Person WHERE email = 'person16@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Fruit Juice')),
((SELECT person_id FROM Person WHERE email = 'person17@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Green Tea')),
((SELECT person_id FROM Person WHERE email = 'person18@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Coconut Water')),
((SELECT person_id FROM Person WHERE email = 'person19@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Herbal Tea')),
((SELECT person_id FROM Person WHERE email = 'person20@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Water')),
((SELECT person_id FROM Person WHERE email = 'person1@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Outdoor Running')),
((SELECT person_id FROM Person WHERE email = 'person2@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hiking')),
((SELECT person_id FROM Person WHERE email = 'person3@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Swimming')),
((SELECT person_id FROM Person WHERE email = 'person4@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Traveling')),
((SELECT person_id FROM Person WHERE email = 'person5@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Gardening')),
((SELECT person_id FROM Person WHERE email = 'person6@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Reading')),
((SELECT person_id FROM Person WHERE email = 'person7@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Cycling')),
((SELECT person_id FROM Person WHERE email = 'person8@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hiking')),
((SELECT person_id FROM Person WHERE email = 'person9@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Skiing')),
((SELECT person_id FROM Person WHERE email = 'person10@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Jogging')),
((SELECT person_id FROM Person WHERE email = 'person11@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Rock Climbing')),
((SELECT person_id FROM Person WHERE email = 'person12@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Yoga')),
((SELECT person_id FROM Person WHERE email = 'person13@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hiking')),
((SELECT person_id FROM Person WHERE email = 'person14@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Running')),
((SELECT person_id FROM Person WHERE email = 'person15@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Cycling')),
((SELECT person_id FROM Person WHERE email = 'person16@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Yoga')),
((SELECT person_id FROM Person WHERE email = 'person17@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Gardening')),
((SELECT person_id FROM Person WHERE email = 'person18@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hiking')),
((SELECT person_id FROM Person WHERE email = 'person19@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Swimming')),
((SELECT person_id FROM Person WHERE email = 'person20@email.com'), (SELECT favourite_id FROM Favourite WHERE favourite_name = 'Hiking'));


